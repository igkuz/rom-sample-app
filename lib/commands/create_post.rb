class CreatePost < ROM::Commands::Create[:sql]
  relation :posts
  register_as :create
  result :one

  use :timestamps
  timestamp :scrapped_at, :created_at, :updated_at
end