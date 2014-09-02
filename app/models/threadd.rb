class Threadd < ActiveRecord::Base
  belongs_to :board
  has_many :posts
  validates :name, length: { maximum: 70 }
end
