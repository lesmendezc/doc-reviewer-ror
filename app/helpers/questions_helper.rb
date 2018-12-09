module QuestionsHelper
    def fields_of_question(question)
        type = question.type
        type.slice!('Questions::')
        'questions/' + type.underscore + '_fields'
    end
end