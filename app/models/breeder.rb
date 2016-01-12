class Breeder < ActiveRecord::Base
  belongs_to :species
  has_many :meals

  def check_leaving(menu:)
    self.update! recipted_on: DateTime.now
  end
end
