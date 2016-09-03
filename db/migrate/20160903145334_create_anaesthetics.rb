class CreateAnaesthetics < ActiveRecord::Migration[5.0]
  def change
    create_table :anaesthetics do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.datetime :date_and_time
      t.string :intevention
      t.string :indication
      t.integer :no_attempts
      t.string :complications

      t.timestamps
    end
  end
end
