class Board < ActiveRecord::Base
  has_many :threadds, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :shortcode, presence: true, format: { with: /\A[a-z0-9]+\z/ }, uniqueness: true

  def threadds_by_post_id
    return self.threadds.sort { |a,b| a.posts.order('id DESC').first <=> b.posts.order('id DESC').first}.reverse
  end

end
