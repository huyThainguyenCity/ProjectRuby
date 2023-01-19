class Tag < ApplicationRecord
    has_many :exam_tags
    has_many :exams , through: :exam_tags
    has_many :users , through: :exam_tags
end
