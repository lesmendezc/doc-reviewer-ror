class Evaluation < ApplicationRecord
  belongs_to :review
  belongs_to :question
end
