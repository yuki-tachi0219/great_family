class Parent < ApplicationRecord
  belongs_to :grand_parent
  has_many :children
end
