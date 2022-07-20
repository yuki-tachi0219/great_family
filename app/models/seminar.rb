class Seminar < ApplicationRecord
  belongs_to :school
  has_many :children
end
