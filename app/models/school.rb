class School < ApplicationRecord
  belongs_to :school_category
  belongs_to :state
  has_many :seminars
end
