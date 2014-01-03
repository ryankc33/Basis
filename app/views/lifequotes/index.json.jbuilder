json.array!(@lifequotes) do |lifequote|
  json.extract! lifequote, :id, :cover_amount, :cover, :cover_type, :cover_duration, :joint_cover, :monthly_payment, :applicant_title, :applicant_firstname, :applicant_lastname, :email, :applicant_date_of_birth, :applicant_phone, :smoking, :joint_applicant_title, :joint_applicant_firstname, :joint_applicant_lastname, :joint_applicant_date_of_birth, :joint_applicant_smoking
  json.url lifequote_url(lifequote, format: :json)
end
