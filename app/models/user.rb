class User < ActiveRecord::Base
  has_many :favorites, dependent: :destroy
  has_many :posts
  has_many :comments
  has_many :votes, dependent: :destroy
  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def admin?
    role == 'admin'
  end

  def moderator?
    role == 'moderator'
  end

  def favorited(post)
     favorites.where(post_id: post.id).first
   end

end
