class Posts < ROM::Relation[:sql]
  schema(:posts, infer: true) do
    attribute :stats, Types::Coercible::JSON
    associations do
      belongs_to :company
    end
  end

  def by_url(url)
    where(url: url).to_a
  end
end