class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :bidder_id
      t.integer :demo_id
      t.text :amendments
      t.boolean :accepted

      t.timestamps
    end
  end
end
