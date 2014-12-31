class CreateTunes < ActiveRecord::Migration
  def change
    create_table :tunes do |t|
      

      t.timestamps
    end
  end
end
