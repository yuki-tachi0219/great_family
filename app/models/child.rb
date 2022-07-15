class Child < ApplicationRecord
  belongs_to :parent
  has_many :grand_children

  enum gender: { male: 0, female: 1 }
end
