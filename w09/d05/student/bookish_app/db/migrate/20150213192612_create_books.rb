class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.date :released_on
      t.string :genre
      t.references :author
    end
  end
end
