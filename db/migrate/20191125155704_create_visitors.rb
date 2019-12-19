class CreateVisitors < ActiveRecord::Migration[6.0]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :credential
      t.string :email
      t.boolean :acquaintance, default: false
      t.boolean :initiator, default: false
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
