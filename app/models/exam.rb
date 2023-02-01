class Exam < ApplicationRecord
    has_many :questions
    has_many :user_exams
    has_many :exam_tags
    has_many :users , through: :user_exams
    has_many :tags , through: :exam_tags
end
