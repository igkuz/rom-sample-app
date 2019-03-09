ROM::SQL.migration do
  change do
    create_table :companies do
      primary_key :id
      column :name, String, null: false
      column :domain, String, null: false
      column :state, String, null: false, default: 'running'
      column :created_at, DateTime
      column :updated_at, DateTime
    end
  end
end