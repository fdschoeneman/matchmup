class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.integer :contractor_id
      t.integer :client_id
      t.integer :facilitator_id
      t.integer :facility_id
      t.string :aasm_state

      t.timestamps
    end
  end
end
