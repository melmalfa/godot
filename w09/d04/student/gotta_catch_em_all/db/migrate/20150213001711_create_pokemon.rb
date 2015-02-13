class CreatePokemon < ActiveRecord::Migration
  def change
    create_table :pokemon do |t|
      t.string :name,   null: false, unique: true
      t.integer :weight,  null:false
      t.integer :height,  null:false
      t.string  :image_url,  null: false
      t.string  :happiness_level,   null:false
      t.timestamps
    end
  end
end


