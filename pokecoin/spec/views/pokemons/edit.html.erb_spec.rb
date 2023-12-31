require 'rails_helper'

RSpec.describe "pokemons/edit", type: :view do
  let(:pokemon) {
    Pokemon.create!(
      name: "MyString",
      base_experience: 1
    )
  }

  before(:each) do
    assign(:pokemon, pokemon)
  end

  it "renders the edit pokemon form" do
    render

    assert_select "form[action=?][method=?]", pokemon_path(pokemon), "post" do

      assert_select "input[name=?]", "pokemon[name]"

      assert_select "input[name=?]", "pokemon[base_experience]"
    end
  end
end
