class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :description
      t.integer :joke_id
      t.string :user
      
      t.timestamps
    end
  end
end
