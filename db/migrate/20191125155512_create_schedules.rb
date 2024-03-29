class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.datetime :datetime
      t.boolean :approved, default: false
      t.references :host, null: false, foreign_key: true

      t.timestamps
    end
  end
end
