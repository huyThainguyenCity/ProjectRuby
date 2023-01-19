class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validates :first_name, presence: true
    validates :last_name, presence: true
    has_one_attached :image
    has_many :user_exams
    has_many :exam_tags
    has_many :exams , through: :user_exams
    has_many :tags , through: :exam_tags
    has_many :exams , through: :exam_tags
end
