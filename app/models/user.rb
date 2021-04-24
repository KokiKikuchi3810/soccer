class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

        has_many :forums, dependent: :destroy
        has_many :likes, dependent: :destroy
        has_many :liked_users, through: :likes, source: :forum
        has_many :liked_forums, through: :likes, source: :forum
        validates :name, presence: true 

        def already_liked?(forum)
          self.likes.exists?(forum_id: forum.id)
        end


end
