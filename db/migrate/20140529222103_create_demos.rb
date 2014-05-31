class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.integer :contractor_id
      t.integer :client_id
      t.integer :facilitator_id
      t.integer :venue_id
      t.datetime :drafted_at
      t.datetime :contracted_at
      t.datetime :started_at
      t.datetime :finished_at
      t.datetime :submitted_at
      t.datetime :rejected_at
      t.datetime :accepted_at
      t.datetime :payment_sent_at
      t.datetime :payment_received_at
      t.datetime :contractor_rated_at
      t.datetime :client_rated_at
      t.datetime :contractor_rated_at
      t.hstore :contractor_rating
      t.hstore :client_rating
      t.decimal :hourly_rate
      t.text :terms
      t.string :aasm_state
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
