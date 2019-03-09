class CreateCompany < ROM::Commands::Create[:sql]
  relation :companies
  register_as :create
  result :one

  use :timestamps
  timestamp :created_at, :updated_at
end