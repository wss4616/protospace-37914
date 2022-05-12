class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :prototypes #1つのuserは、多くのPrototypeを作れる（1対多  has_manyはSをつけることで定義付けできる
  has_many :comments  #has_manyはSをつけることで定義付けできる
  has_one_attached :image #カラム内のimageと1対1


  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

end
