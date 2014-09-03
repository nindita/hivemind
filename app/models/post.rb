class Post < ActiveRecord::Base
  belongs_to :threadd
  has_attached_file :image, :styles => { :thumb => "150x150>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 5.megabytes
  validates :content, presence: true, length: { maximum: 5000 }
end
