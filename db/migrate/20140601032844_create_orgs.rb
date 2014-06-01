class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.string :tax_id
      t.integer :logo_id


      t.timestamps


    end

    add_index :orgs, :name
    add_index :orgs, :tax_id
  end
end
