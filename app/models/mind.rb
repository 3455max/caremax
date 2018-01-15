class Mind < ApplicationRecord
  # belongs_to :heart
  has_many :hearts
  has_many :glads
  has_many :pictures, :foreign_key => "heart"
end
