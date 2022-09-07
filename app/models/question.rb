class Question < ApplicationRecord
    validates :name, presence: true, {:other_than:name}
    validates :formulary_id, presence: true
end
