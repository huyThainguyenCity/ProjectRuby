class Question < ApplicationRecord
  belongs_to :exam
  has_one :answer
  belongs_to :exam_answer
end
