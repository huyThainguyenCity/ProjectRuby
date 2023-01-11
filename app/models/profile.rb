class Profile < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    belongs_to :sign_in
    has_one_attached :image
end
