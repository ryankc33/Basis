require 'spec_helper'

describe "car_insurances/index" do
  before(:each) do
    assign(:car_insurances, [
      stub_model(CarInsurance,
        :name => "Name",
        :premium_base => "9.99",
        :description => "MyText",
        :benefits => "MyText"
      ),
      stub_model(CarInsurance,
        :name => "Name",
        :premium_base => "9.99",
        :description => "MyText",
        :benefits => "MyText"
      )
    ])
  end

  it "renders a list of car_insurances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
