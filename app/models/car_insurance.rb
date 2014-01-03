class CarInsurance < ActiveRecord::Base
  has_and_belongs_to_many :car_insurance_quotes
  
end
