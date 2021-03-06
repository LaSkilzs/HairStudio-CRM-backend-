class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.datetime :start_time
      t.datetime :end_time
      t.integer :status
      t.float :service_total
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
