require 'spec_helper'

describe "lifequotes/index" do
  before(:each) do
    assign(:lifequotes, [
      stub_model(Lifequote,
        :cover_amount => "9.99",
        :cover => "Cover",
        :cover_type => "Cover Type",
        :cover_duration => "Cover Duration",
        :joint_cover => false,
        :monthly_payment => false,
        :applicant_title => "Applicant Title",
        :applicant_firstname => "Applicant Firstname",
        :applicant_lastname => "Applicant Lastname",
        :email => "Email",
        :applicant_phone => "MyText",
        :smoking => false,
        :joint_applicant_title => "Joint Applicant Title",
        :joint_applicant_firstname => "Joint Applicant Firstname",
        :joint_applicant_lastname => "Joint Applicant Lastname",
        :joint_applicant_smoking => false
      ),
      stub_model(Lifequote,
        :cover_amount => "9.99",
        :cover => "Cover",
        :cover_type => "Cover Type",
        :cover_duration => "Cover Duration",
        :joint_cover => false,
        :monthly_payment => false,
        :applicant_title => "Applicant Title",
        :applicant_firstname => "Applicant Firstname",
        :applicant_lastname => "Applicant Lastname",
        :email => "Email",
        :applicant_phone => "MyText",
        :smoking => false,
        :joint_applicant_title => "Joint Applicant Title",
        :joint_applicant_firstname => "Joint Applicant Firstname",
        :joint_applicant_lastname => "Joint Applicant Lastname",
        :joint_applicant_smoking => false
      )
    ])
  end

  it "renders a list of lifequotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Cover".to_s, :count => 2
    assert_select "tr>td", :text => "Cover Type".to_s, :count => 2
    assert_select "tr>td", :text => "Cover Duration".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Applicant Title".to_s, :count => 2
    assert_select "tr>td", :text => "Applicant Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Applicant Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Joint Applicant Title".to_s, :count => 2
    assert_select "tr>td", :text => "Joint Applicant Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Joint Applicant Lastname".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
