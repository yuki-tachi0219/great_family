class GrandParent < ApplicationRecord
  belongs_to :great_grand_parent
  has_many :parents

  enum gender: { male: 0, female: 1 }
end
