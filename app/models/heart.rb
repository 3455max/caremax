class Heart < ApplicationRecord
    # has_many :minds
    belongs_to :mind
    # belongs_to :glad

  validate :error_check

  def error_check
    if date.blank?
        errors[:base]<<'同じ日の登録は１日１回だよ' 
    end
    # day = date(1i) + "-" + date(2i) + "-" + date(3i)
    # day = Date.strptime(day,'%Y-%m-%d')
    # if Heart.find_by(date: day)
    #     errors[:base]<<'同じ日の登録は１日１回だよ'        
    # end    
  end
end
