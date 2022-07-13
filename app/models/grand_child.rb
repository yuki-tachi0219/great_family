class GrandChild < ApplicationRecord
  belongs_to :child
  has_many :great_grand_children
end
