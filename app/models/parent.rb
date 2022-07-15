class Parent < ApplicationRecord
  belongs_to :grand_parent
  has_many :children

  enum gender: { male: 0, female: 1 }
end
