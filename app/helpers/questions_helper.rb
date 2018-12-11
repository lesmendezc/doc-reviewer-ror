module QuestionsHelper
    def fields_of_question(question_type)
        type = question_type
        type.slice!('Questions::')
        'questions/' + type.underscore + '_fields'
    end

    def question_options_for_select(form_builder)
        [
            ['Escala', 'Questions::SelectOption'],
            ['Texto','Questions::Text']
        ]
    end
end