class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :comment, presence: true, length: { maximum: 200 }
  validate :image_size
  
  private
    
    # アップロードされた画像のサイズをバリデーションする
    def image_size
      if image.size > 5.megabytes
        errors.add(:image, "５メガバイト以下にしてください。")
      end
    end
end
