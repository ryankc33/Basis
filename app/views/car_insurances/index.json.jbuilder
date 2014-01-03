json.array!(@car_insurances) do |car_insurance|
  json.extract! car_insurance, :id, :name, :premium_base, :description, :benefits
  json.url car_insurance_url(car_insurance, format: :json)
end
