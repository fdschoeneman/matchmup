class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :user_id
      t.integer :org_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
