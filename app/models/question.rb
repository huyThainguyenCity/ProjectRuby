class Question < ApplicationRecord
  belongs_to :exam
  has_many :answers
  has_many :exam_answer
end
