class CreateReviewtunes < ActiveRecord::Migration
  def change
    create_table :reviewtunes do |t|

      t.timestamps
    end
  end
end
