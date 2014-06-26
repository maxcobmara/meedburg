require 'spec_helper'

describe "payments/edit" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :compound_id => 1,
      :amount => "9.99"
    ))
  end

  it "renders the edit payment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do
      assert_select "input#payment_compound_id[name=?]", "payment[compound_id]"
      assert_select "input#payment_amount[name=?]", "payment[amount]"
    end
  end
end
