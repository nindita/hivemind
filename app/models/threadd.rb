class Threadd < ActiveRecord::Base
  belongs_to :board
  has_many :posts, dependent: :destroy
  validates :name, length: { maximum: 70 }, presence: true
  accepts_nested_attributes_for :posts, :allow_destroy => true

  def posts_with_image
    posts = []
    self.posts.each do |p|
      if p.image?
        posts.push(p)
      end
    end
    return posts
  end

end
