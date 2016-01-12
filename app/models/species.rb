class Species < ActiveRecord::Base
  has_many :animals
  has_many :creatures, through: :animals
  has_many :breeders
  # has_many :meals, through: :breeders
end
