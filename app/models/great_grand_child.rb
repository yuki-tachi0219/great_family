class GreatGrandChild < ApplicationRecord
  belongs_to :grand_child

  enum gender: { male: 0, female: 1 }
end
