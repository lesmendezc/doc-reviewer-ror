class Question < ApplicationRecord
  belongs_to :review
  has_one :answer
end
