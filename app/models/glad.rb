class Glad < ApplicationRecord
    belongs_to :mind
    has_many :hearts
end
