class Visit < ApplicationRecord
    validates :data, presence: true, {greater_than_or_equal_to: data}
    validates :checkin_at, presence: true, {less_than_or_equal_to: data && less_than: checkout_at}
    validates :checkout_at, presence: true, {greater_than: checkin_at}
    validates :user_id, presence: true, {:other_than:user_id}
end
