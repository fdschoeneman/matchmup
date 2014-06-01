class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :tax_id, :string
    add_column :users, :bio, :text

    add_index :users, [:first_name, :last_name]
    add_index :users, :tax_id
  end

end
