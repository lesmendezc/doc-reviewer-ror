class Review < ApplicationRecord
  belongs_to :paper
  has_many :questions
end
