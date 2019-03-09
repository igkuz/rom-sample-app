ROM::SQL.migration do
  change do
    create_table :posts do
      primary_key :id
      column :url, String, unique: true, null: false
      column :se_post, :boolean, null: false, default: false
      column :published_at, DateTime
      column :scrapped_at, DateTime, null: false
      column :error, String
      column :stats, JSON
      column :created_at, DateTime
      column :updated_at, DateTime
      foreign_key :company_id, :companies
    end
  end
end