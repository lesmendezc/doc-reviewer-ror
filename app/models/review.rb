class Review < ApplicationRecord
  belongs_to :paper
  belongs_to :user
  belongs_to :survey
  has_many :evaluations, dependent: :destroy
  accepts_nested_attributes_for :evaluations

  def build_evaluation(question)
    new_record? ? evaluations.build(question_id: question.id) : evaluations.find_by(question_id: question.id)
  end
  
  def get_relevance()
    return self.relevance[0].to_i * 2
  end

  def get_problem_def()
    return self.problem_def[0].to_i * 2
  end

  def get_general_def()
    return self.general_def[0].to_i * 2
  end

  def get_specific_def()
    return self.specific_def[0].to_i * 2
  end  

  def get_confidence()
    return self.confidence[0].to_i
  end

  def get_general_evaluation()
    return self.general_evaluation[0].to_i * 12
  end

  def get_total()
    return get_relevance()+get_problem_def()+get_general_def()+get_specific_def()+get_general_evaluation()
  end
end
