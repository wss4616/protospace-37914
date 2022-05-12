class Prototype < ApplicationRecord
  belongs_to :user #Userモデルと1対1
  has_many :comments, dependent: :destroy #has_manyはSをつけることで定義付けできる

  has_one_attached :image #各レコードとファイルを1対1の関係で紐づける

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
end
