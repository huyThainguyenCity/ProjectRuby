class Answer < ApplicationRecord
    belongs_to :question
    belongs_to :exam_answer
end
