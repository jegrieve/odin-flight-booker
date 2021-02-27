class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :from_airport, index: true, foreign_key: { to_table: :airports }
      t.references :to_airport, index: true, foreign_key: { to_table: :airports }
      t.integer :duration
      t.datetime :scheduled_on

      t.timestamps
    end
  end
end
