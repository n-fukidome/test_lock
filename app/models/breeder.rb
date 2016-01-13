class Breeder < ActiveRecord::Base
  belongs_to :species
  has_many :meals

  def check_leaving(menu:)
    _meal = menu.meal
    return unless _meal.breeder_id == self.id
    _meal.update! recipted_on: DateTime.now
  end
end
