class Movie < ActiveRecord::Base
  belongs_to :user
  has_many   :comments

  has_attached_file :image, styles: { medium: "300x500#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :user_id, presence: true
end
