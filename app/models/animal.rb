class Animal < ActiveRecord::Base
  belongs_to :species
  has_one :creature
end
