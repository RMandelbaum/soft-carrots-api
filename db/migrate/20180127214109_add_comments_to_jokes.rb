class AddCommentsToJokes < ActiveRecord::Migration[5.1]
  def change
    add_column :jokes, :comments, :string
  end
end
