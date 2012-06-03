class Post < ActiveRecord::Base
  attr_accessible :context, :title
  
  has_many :comments 

  has_many :categorizations 
  has_many :categories, 
           :through => :categorizations

  validates_presence_of :title
  validates :context, :presence => true

  def self.published 
    where('published_at < ?', Time.now)
  end

  def self.latest
    published.order('published_at DESC')
  end
end
