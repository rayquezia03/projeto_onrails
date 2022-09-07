class Formulary < ApplicationRecord
    validates :name, presence: true, {:other_than:name}
end
