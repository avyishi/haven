class Show < ActiveRecord::Base
  belongs_to :user
  has_many   :reviewtvs

  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :user_id, presence: true
end
