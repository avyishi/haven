class AddTitleToShows < ActiveRecord::Migration
   def change
    add_column :shows, :title, :string
    add_column :shows, :user_id, :string
  end
end
