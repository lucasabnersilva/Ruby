class AddSpriteUrlToPokemons < ActiveRecord::Migration[7.1]
  def change
    add_column :pokemons, :sprite_url, :string
  end
end
