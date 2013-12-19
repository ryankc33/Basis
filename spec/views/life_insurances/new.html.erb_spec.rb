require 'spec_helper'

describe "life_insurances/new" do
  before(:each) do
    assign(:life_insurance, stub_model(LifeInsurance,
      :reviewable => false,
      :monthly_premium_base => 1
    ).as_new_record)
  end

  it "renders new life_insurance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", life_insurances_path, "post" do
      assert_select "input#life_insurance_reviewable[name=?]", "life_insurance[reviewable]"
      assert_select "input#life_insurance_monthly_premium_base[name=?]", "life_insurance[monthly_premium_base]"
    end
  end
end
