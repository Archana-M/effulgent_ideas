class Idea < ActiveRecord::Base
  belongs_to :user

  has_many :likes, dependent: :destroy
  

  has_many :users_liked, through: :likes, source: :user


  validates :content, presence: :true

  def like_count
  	count = 0

  	self.likes.count

  	count
  end

  def self.order_by_likes
  	ideas = Idea.all.to_json

  	ideas.sort! { |a,b| a.like_count <=> b.like_count }

  	ideas
  end
end
