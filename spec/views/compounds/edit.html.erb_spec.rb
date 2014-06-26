require 'spec_helper'

describe "compounds/edit" do
  before(:each) do
    @compound = assign(:compound, stub_model(Compound,
      :compound_code => "MyString",
      :location => "MyString",
      :compound_type => "MyString",
      :customer_id => "MyString",
      :amount => "9.99",
      :description => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit compound form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", compound_path(@compound), "post" do
      assert_select "input#compound_compound_code[name=?]", "compound[compound_code]"
      assert_select "input#compound_location[name=?]", "compound[location]"
      assert_select "input#compound_compound_type[name=?]", "compound[compound_type]"
      assert_select "input#compound_customer_id[name=?]", "compound[customer_id]"
      assert_select "input#compound_amount[name=?]", "compound[amount]"
      assert_select "input#compound_description[name=?]", "compound[description]"
      assert_select "input#compound_status[name=?]", "compound[status]"
    end
  end
end
