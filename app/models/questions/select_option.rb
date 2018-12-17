module Questions
class SelectOption < Question
    validates_presence_of :max_score

    def self.display_type
        'Escala'
    end
end
end
