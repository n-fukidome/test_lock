class Meal < ActiveRecord::Base
  belongs_to :breeder
  has_many :menus
end
