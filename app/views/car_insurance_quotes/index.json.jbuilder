json.array!(@car_insurance_quotes) do |car_insurance_quote|
  json.extract! car_insurance_quote, :id, :car_registration_number, :car_modified, :car_purchase_date, :owner_and_keeper, :car_usage, :annual_distance, :car_storage, :total_cars_owned, :car_model, :applicant_first_name, :applicant_surname, :applicant_gender, :applicant_date_of_birth, :applicant_marital_status, :applicant_children_under16, :applicant_occupation, :applicant_employer_type, :applicant_address, :applicant_postcode, :applicant_phone_number, :applicant_previous_claim, :applicant_motoring_offences, :applicant_convictions
  json.url car_insurance_quote_url(car_insurance_quote, format: :json)
end
