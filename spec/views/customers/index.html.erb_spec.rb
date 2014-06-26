require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :customer_no => "Customer No",
        :name => "Name",
        :address => "MyText",
        :other_customer_no => "Other Customer No"
      ),
      stub_model(Customer,
        :customer_no => "Customer No",
        :name => "Name",
        :address => "MyText",
        :other_customer_no => "Other Customer No"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Customer No".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Other Customer No".to_s, :count => 2
  end
end
