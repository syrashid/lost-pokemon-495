class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.date :found_on
      t.string :address
      t.string :species

      t.timestamps
    end
  end
end
