class Board < ActiveRecord::Base
  has_many :threadds
  validates :name, presence: true, uniqueness: true
  validates :shortcode, presence: true, format: { with: /\A[a-z0-9]+\z/ }, uniqueness: true
end
