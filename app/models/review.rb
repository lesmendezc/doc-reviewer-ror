class Review < ApplicationRecord
  belongs_to :paper

  def get_relevance()
    return self.relevance[0].to_i
  end

  def get_problem_def()
    return self.problem_def[0].to_i
  end

  def get_general_def()
    return self.general_def[0].to_i
  end

  def get_specific_def()
    return self.specific_def[0].to_i
  end  

  def get_confidence()
    return self.confidence[0].to_i
  end

  def get_total()
    return get_relevance()+get_problem_def()+get_specific_def()
  end
end
