require 'rails_helper'

RSpec.describe "sales/index", type: :view do
  before(:each) do
    assign(:sales, [
      Sale.create!(
        from_user: nil,
        to_user: nil,
        pokemon: nil
      ),
      Sale.create!(
        from_user: nil,
        to_user: nil,
        pokemon: nil
      )
    ])
  end

  it "renders a list of sales" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
