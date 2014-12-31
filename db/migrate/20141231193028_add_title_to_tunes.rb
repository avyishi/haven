class AddTitleToTunes < ActiveRecord::Migration
  def change
    add_column :tunes, :title, :string
    add_column :tunes, :user_id, :string
  end
end
