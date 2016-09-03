class CreateFollowUps < ActiveRecord::Migration[5.0]
  def change
    create_table :follow_ups do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.boolean :mobilising
      t.boolean :sensory_disturbance
      t.boolean :motor_weakness
      t.boolean :passed_urine
      t.boolean :headache
      t.boolean :pain
      t.boolean :awareness_GA

      t.timestamps
    end
  end
end
