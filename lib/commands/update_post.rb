class UpdatePost < ROM::Commands::Update[:sql]
  relation :posts
  register_as :update

  use :timestamps
  timestamp :updated_at
end