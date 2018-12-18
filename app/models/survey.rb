class Survey < ApplicationRecord
    has_many :questions
    has_many :reviews
    belongs_to :event
    
    accepts_nested_attributes_for :questions, allow_destroy: true

    validates_presence_of :name
    validates_associated :questions
    validate :number_of_questions

    def quantitative_questions
        questions.select { |question| question.is_quantitative? }
    end

    private 

    def number_of_questions
        errors.add(:questions, "should be at least 1") if questions.size < 1
    end
end
