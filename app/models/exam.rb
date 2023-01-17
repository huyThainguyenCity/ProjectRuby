class Exam < ApplicationRecord
    has_many :questions
    has_many :user_exams
end
