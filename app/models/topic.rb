class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  
  scope :publicy_viewable, -> {where( public: true ) }
  scope :privately_viewable, -> {where( public: false ) } 
  scope :visible_to, -> (user) { user ? all : publicy_viewable) }


  
end
