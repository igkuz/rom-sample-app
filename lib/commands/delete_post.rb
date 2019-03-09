class DeletePost < ROM::Commands::Delete[:sql]
  relation :posts
  register_as :delete
end