class CreateSpecialities < ActiveRecord::Migration[7.1]
  def change
    create_table :specialities do |t|
      t.string :name

      t.timestamps
    end
    add_reference :appointments, :speciality, foreign_key: true
  end
end
