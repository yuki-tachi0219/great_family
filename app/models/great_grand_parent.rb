class GreatGrandParent < ApplicationRecord
  has_many :grand_parents

  enum gender: { male: 0, female: 1 }
end
