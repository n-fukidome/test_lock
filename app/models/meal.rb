class Meal < ActiveRecord::Base
  belongs_to :breeder
  has_one :menu
end
