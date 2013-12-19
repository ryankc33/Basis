json.array!(@life_insurances) do |life_insurance|
  json.extract! life_insurance, :id, :reviewable, :monthly_premium_base
  json.url life_insurance_url(life_insurance, format: :json)
end
