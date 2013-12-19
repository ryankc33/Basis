class CreateLifeInsurances < ActiveRecord::Migration
  def change
    create_table :life_insurances do |t|
      t.boolean :reviewable
      t.integer :monthly_premium_base

      t.timestamps
    end
  end
end
