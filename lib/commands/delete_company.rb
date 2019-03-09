class DeleteCompany < ROM::Commands::Delete[:sql]
  relation :companies
  register_as :delete
end