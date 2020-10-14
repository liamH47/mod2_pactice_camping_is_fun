class Signup < ApplicationRecord
    belongs_to :camper
    belongs_to :activity
    validates :time, numericality: {only_integer: true, greater_than: 0, less_than: 24}
end
