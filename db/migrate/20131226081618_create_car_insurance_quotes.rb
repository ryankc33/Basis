class CreateCarInsuranceQuotes < ActiveRecord::Migration
  def change
    create_table :car_insurance_quotes do |t|
      t.string :car_registration_number
      t.boolean :car_modified
      t.date :car_purchase_date
      t.boolean :owner_and_keeper
      t.string :car_usage
      t.integer :annual_distance
      t.string :car_storage
      t.integer :total_cars_owned
      t.string :car_model
      t.string :applicant_first_name
      t.string :applicant_surname
      t.string :applicant_gender
      t.date :applicant_date_of_birth
      t.string :applicant_marital_status
      t.integer :applicant_children_under16
      t.string :applicant_occupation
      t.string :applicant_employer_type
      t.string :applicant_address
      t.string :applicant_postcode
      t.text :applicant_phone_number
      t.boolean :applicant_previous_claim
      t.boolean :applicant_motoring_offences
      t.boolean :applicant_convictions

      t.timestamps
    end
  end
end
