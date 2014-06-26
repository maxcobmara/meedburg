require 'spec_helper'

describe "compounds/index" do
  before(:each) do
    assign(:compounds, [
      stub_model(Compound,
        :compound_code => "Compound Code",
        :location => "Location",
        :compound_type => "Compound Type",
        :customer_id => "Customer",
        :amount => "9.99",
        :description => "Description",
        :status => "Status"
      ),
      stub_model(Compound,
        :compound_code => "Compound Code",
        :location => "Location",
        :compound_type => "Compound Type",
        :customer_id => "Customer",
        :amount => "9.99",
        :description => "Description",
        :status => "Status"
      )
    ])
  end

  it "renders a list of compounds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Compound Code".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Compound Type".to_s, :count => 2
    assert_select "tr>td", :text => "Customer".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
