require 'rails_helper'

RSpec.describe "sales/new", type: :view do
  before(:each) do
    assign(:sale, Sale.new(
      from_user: nil,
      to_user: nil,
      pokemon: nil
    ))
  end

  it "renders new sale form" do
    render

    assert_select "form[action=?][method=?]", sales_path, "post" do

      assert_select "input[name=?]", "sale[from_user_id]"

      assert_select "input[name=?]", "sale[to_user_id]"

      assert_select "input[name=?]", "sale[pokemon_id]"
    end
  end
end
