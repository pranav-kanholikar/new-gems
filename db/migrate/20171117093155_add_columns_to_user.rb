class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :date, :date
    add_column :users, :bio, :text
    add_column :users, :twitter_username, :string
    add_column :users, :github_username, :string
    add_column :users, :website, :string
  end
end
