require 'rails_helper'

describe Question do
    fixtures :questions

    before(:example) do
        @question = questions(:select_option_one)
    end

    it 'always has a type' do
        @question.type = nil
        expect(@question.valid?).to be_falsy
    end

    it 'always have a title' do
        @question.title = nil
        expect(@question.valid?).to be_falsy
    end
end