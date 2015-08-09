class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :appointment_date
      t.string :pet
      t.integer :user_id
      t.string :doctor_name
      t.boolean :requires_remainder
      t.text :reason

      t.timestamps null: false
    end
  end
end
