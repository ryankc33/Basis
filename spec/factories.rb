FactoryGirl.define do
 
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com" }   
    sequence(:first_name) { |n| "Person_#{n}firstname" }
    sequence(:last_name) { |n| "Person_#{n}lastname" }
    date_of_birth "Date.today"
    password "password"
    password_confirmation "password"
  end
  
  factory :vendor do
    sequence(:name) { |n| "Vendor #{n}" }
    sequence(:email) { |n| "vendor_#{n}@example.com" }
    password "password"
    password "password"
    primary_phone "0312345678"
    primary_website "www.vendor.com"
    primary_contact_name "ah long"
    primary_contact_position "CEO"
    primary_contact_department "marketing"
    year_established "1969"
  end
  
  factory :admin do
    sequence(:name) { |n| "Admin #{n}" }
    sequence(:email) { |n| "admin_#{n}@example.com"}
  end
  
  factory :car_insurance do
    sequence(:name) { |n| "Car Insurance #{n}" }
    sequence(:premium_base) { |n| "1+0.#{n}" }
    sequence(:description) { |n| "This is a description of Car insurance product number #{n}"}
    benefit "Benefit 1 Benefit 2 Benefit 3"  
  end  
    
end