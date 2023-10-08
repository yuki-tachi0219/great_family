class Child < ApplicationRecord
  belongs_to :parent
  belongs_to :seminar
  has_many :grand_children
  has_many :articles

  enum gender: { male: 0, female: 1 }
end
