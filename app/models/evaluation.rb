class Evaluation < ApplicationRecord
  belongs_to :review
  belongs_to :question

  validates_presence_of :score, :description

  def is_quantitative?
    score
  end
  
  def is_qualitative?
    description
  end
end
