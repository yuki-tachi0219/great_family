class GrandChild < ApplicationRecord
  belongs_to :child
  has_many :great_grand_children

  enum gender: { male: 0, female: 1 }
end
