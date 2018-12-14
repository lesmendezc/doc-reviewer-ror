class Option < ApplicationRecord
    belongs_to :question

    def show
        "(#{point}) #{description}"
    end
end
