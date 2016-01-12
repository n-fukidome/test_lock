class Species < ActiveRecord::Base
  has_many :animals
  has_many :creatures, through: :animals
  has_many :breeders
  # has_many :meals, through: :breeders

  def update_activation_until
    new_activation_datetime = DateTime.now + 2.hours
    self.animals.each do |animal|
      animal.creature.update! activation_until: new_activation_datetime
    end
  end
end
