class Animal < ActiveRecord::Base
  belongs_to :species
  has_many :creatures
end
