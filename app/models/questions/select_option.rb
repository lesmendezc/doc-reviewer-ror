module Questions
class SelectOption < Question
    validates_presence_of :max_score
    validate :number_of_options
    
    def self.display_type
        'Escala'
    end
    
    private
    
    def number_of_options
        if options.size < 2
            errors.add(:options, "should be at least 2") 
        end
    end
end
end
