require 'spec_helper'

describe "customers/new" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :customer_no => "MyString",
      :name => "MyString",
      :address => "MyText",
      :other_customer_no => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", customers_path, "post" do
      assert_select "input#customer_customer_no[name=?]", "customer[customer_no]"
      assert_select "input#customer_name[name=?]", "customer[name]"
      assert_select "textarea#customer_address[name=?]", "customer[address]"
      assert_select "input#customer_other_customer_no[name=?]", "customer[other_customer_no]"
    end
  end
end
