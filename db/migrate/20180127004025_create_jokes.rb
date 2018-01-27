class CreateJokes < ActiveRecord::Migration[5.1]
  def change
    create_table :jokes do |t|
      t.string :description
      t.string :author
      t.string :category
      t.integer :rating
      t.string :img_url

      t.timestamps
    end
  end
end
