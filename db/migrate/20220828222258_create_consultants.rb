class CreateConsultants < ActiveRecord::Migration[7.0]
  def change
    create_table :consultants do |t|
      t.string :name
      t.integer :age
      t.string :rut
      t.datetime :birth_date
      t.string :scholarship
      t.string :street_adress
      t.string :health_system
      t.string :responsible_adult
      t.integer :age_responsible_adult
      t.string :rut_responsible_adult

      t.timestamps
    end
  end
end
