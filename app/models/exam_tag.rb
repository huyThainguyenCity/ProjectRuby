class ExamTag < ApplicationRecord
    belongs_to :exam
    belongs_to :tag
    belongs_to :user
end
