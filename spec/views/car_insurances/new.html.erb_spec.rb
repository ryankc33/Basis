require 'spec_helper'

describe "car_insurances/new" do
  before(:each) do
    assign(:car_insurance, stub_model(CarInsurance,
      :name => "MyString",
      :premium_base => "9.99",
      :description => "MyText",
      :benefits => "MyText"
    ).as_new_record)
  end

  it "renders new car_insurance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", car_insurances_path, "post" do
      assert_select "input#car_insurance_name[name=?]", "car_insurance[name]"
      assert_select "input#car_insurance_premium_base[name=?]", "car_insurance[premium_base]"
      assert_select "textarea#car_insurance_description[name=?]", "car_insurance[description]"
      assert_select "textarea#car_insurance_benefits[name=?]", "car_insurance[benefits]"
    end
  end
end
