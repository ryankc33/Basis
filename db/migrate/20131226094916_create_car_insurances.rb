class CreateCarInsurances < ActiveRecord::Migration
  def change
    create_table :car_insurances do |t|
      t.string :name
      t.decimal :premium_base
      t.text :description
      t.text :benefits

      t.timestamps
    end
  end
end
