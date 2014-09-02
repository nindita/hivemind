class Post < ActiveRecord::Base
  belongs_to :threadd
  validates :content, presence: true, length: { maximum: 5000 }
end
