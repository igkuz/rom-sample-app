RSpec.describe 'working with relations' do
  let(:factories) do
    ROM::Factory.configure do |config|
      config.rom = MAIN_CONTAINER
    end
  end

  before do
    factories.define(:post) do |f|
      f.url { fake(:internet, :url, 'example.com') }
      f.se_post false
      f.stats {}
      f.association(:company)
    end
    factories.define(:company) do |f|
      f.sequence(:name) {|n| "Company Name #{n}"}
      f.domain { "https://#{fake(:internet, :domain_name)}" }
      f.state "running"
    end
    factories.define(with_post: :company) do |f|
      f.association(:posts, count: 1)
    end

    MAIN_CONTAINER.commands[:posts][:delete].call()
    MAIN_CONTAINER.commands[:companies][:delete].call()
  end

  it "should create company with post" do
    c = factories[:with_post]
    expect(MAIN_CONTAINER.relations[:companies].count).to be(1)
    expect(MAIN_CONTAINER.relations[:posts].count).to be(1)
    expect(MAIN_CONTAINER.relations[:posts].one[:company_id]).to eq(c.id)
  end
end