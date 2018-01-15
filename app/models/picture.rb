class Picture < ApplicationRecord
    belongs_to :mind, :foreign_key => "heart"
end
