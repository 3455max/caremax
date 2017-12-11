class Heart < ApplicationRecord
    #has_many :minds
    belongs_to :mind
    belongs_to :glad
end
