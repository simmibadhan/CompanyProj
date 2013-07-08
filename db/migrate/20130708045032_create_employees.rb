class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :city_id
      t.string :manager_id

      t.timestamps
    end
  end
end
