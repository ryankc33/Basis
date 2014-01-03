require 'spec_helper'

describe "lifequotes/edit" do
  before(:each) do
    @lifequote = assign(:lifequote, stub_model(Lifequote,
      :cover_amount => "9.99",
      :cover => "MyString",
      :cover_type => "MyString",
      :cover_duration => "MyString",
      :joint_cover => false,
      :monthly_payment => false,
      :applicant_title => "MyString",
      :applicant_firstname => "MyString",
      :applicant_lastname => "MyString",
      :email => "MyString",
      :applicant_phone => "MyText",
      :smoking => false,
      :joint_applicant_title => "MyString",
      :joint_applicant_firstname => "MyString",
      :joint_applicant_lastname => "MyString",
      :joint_applicant_smoking => false
    ))
  end

  it "renders the edit lifequote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lifequote_path(@lifequote), "post" do
      assert_select "input#lifequote_cover_amount[name=?]", "lifequote[cover_amount]"
      assert_select "input#lifequote_cover[name=?]", "lifequote[cover]"
      assert_select "input#lifequote_cover_type[name=?]", "lifequote[cover_type]"
      assert_select "input#lifequote_cover_duration[name=?]", "lifequote[cover_duration]"
      assert_select "input#lifequote_joint_cover[name=?]", "lifequote[joint_cover]"
      assert_select "input#lifequote_monthly_payment[name=?]", "lifequote[monthly_payment]"
      assert_select "input#lifequote_applicant_title[name=?]", "lifequote[applicant_title]"
      assert_select "input#lifequote_applicant_firstname[name=?]", "lifequote[applicant_firstname]"
      assert_select "input#lifequote_applicant_lastname[name=?]", "lifequote[applicant_lastname]"
      assert_select "input#lifequote_email[name=?]", "lifequote[email]"
      assert_select "textarea#lifequote_applicant_phone[name=?]", "lifequote[applicant_phone]"
      assert_select "input#lifequote_smoking[name=?]", "lifequote[smoking]"
      assert_select "input#lifequote_joint_applicant_title[name=?]", "lifequote[joint_applicant_title]"
      assert_select "input#lifequote_joint_applicant_firstname[name=?]", "lifequote[joint_applicant_firstname]"
      assert_select "input#lifequote_joint_applicant_lastname[name=?]", "lifequote[joint_applicant_lastname]"
      assert_select "input#lifequote_joint_applicant_smoking[name=?]", "lifequote[joint_applicant_smoking]"
    end
  end
end
