class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites
  has_many :favorited, through: :favorites, source: :user
  
  def favorited?(user)
    self.favorited.include?(user)
  end 
  
end
