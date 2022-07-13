class GrandParent < ApplicationRecord
  belongs_to :great_grand_parent
  has_many :parents
end
