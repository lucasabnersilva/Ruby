require 'rails_helper'

RSpec.describe "sales/edit", type: :view do
  let(:sale) {
    Sale.create!(
      from_user: nil,
      to_user: nil,
      pokemon: nil
    )
  }

  before(:each) do
    assign(:sale, sale)
  end

  it "renders the edit sale form" do
    render

    assert_select "form[action=?][method=?]", sale_path(sale), "post" do

      assert_select "input[name=?]", "sale[from_user_id]"

      assert_select "input[name=?]", "sale[to_user_id]"

      assert_select "input[name=?]", "sale[pokemon_id]"
    end
  end
end
