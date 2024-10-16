class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true
  
  def was_attached?
    self.image.attached?
  end
end
