class Companies < ROM::Relation[:sql]
  schema(:companies, infer: true) do
    associations do
      has_many :posts
    end
  end
end