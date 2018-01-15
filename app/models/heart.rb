class Heart < ApplicationRecord
    # has_many :minds
    belongs_to :mind
    # belongs_to :glad

  validates :date,uniqueness: {message: "同じ日の登録は一日一回だよ" }

end
