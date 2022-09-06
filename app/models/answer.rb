class Answer < ApplicationRecord
    validates :question_id, presence: true
    validates :formulary_id, presence: true
end
