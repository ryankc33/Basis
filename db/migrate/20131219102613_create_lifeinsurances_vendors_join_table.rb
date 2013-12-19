class CreateLifeInsurancesVendorsJoinTable < ActiveRecord::Migration
  def change
    create_table :lifeinsurances_vendors, :id => false do |t|
      t.belongs_to :life_insurance
      t.belongs_to :vendor
    end
  end
  
  add_index :life_insurances_vendors, [:life_insurance_id, :vendor_id], :name => 'lifeinsurancevendor'
  add_index :life_insurances_vendors, :vendor_id
end