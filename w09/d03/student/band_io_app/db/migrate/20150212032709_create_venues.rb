class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      create_table :venues do |t|
      t.string :name,                 null: false
      t.string :city,                 null: false
      t.string :state,                null: false
      t.boolean :is_family_friendly,  default: false
    end
  end
end
