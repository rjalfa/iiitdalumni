class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  validates :YOJ, presence: true, format: { with: /20[0123456789]\d/ }
  validates :YOL, presence: true, format: { with: /20[0123456789]\d/ }
  validates :pursued, presence: true
  validates :rollno, presence: true, uniqueness: true
  validates :phone, length: {is: 10} #Flawed
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
