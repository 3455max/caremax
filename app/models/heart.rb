class Heart < ApplicationRecord
    #has_many :minds
    belongs_to :mind

  validates :date,uniqueness: {message: "同じ日の登録は一日一回だよ" }

end
