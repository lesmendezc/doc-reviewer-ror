module Questions
class Text < Question
    validates_presence_of :description

    def self.display_type
        'Texto'
    end
end
end
