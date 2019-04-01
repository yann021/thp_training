class JoinDoctorsPatients < ActiveRecord::Migration[5.2]
  def change
    change_table :appointments do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
    end
  end
end
