class CreateHosts < ActiveRecord::Migration[6.0]
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :credential
      t.string :email
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
