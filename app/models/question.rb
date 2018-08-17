class Question < ApplicationRecord
  belongs_to :review
  has_many :answers
  accepts_nested_attributes_for :answers
end
