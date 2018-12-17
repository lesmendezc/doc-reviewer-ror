require 'rails_helper'

describe Survey do
    fixtures :surveys

    before(:example) do
        @survey =  surveys(:one)
    end

    it 'always has a name' do
        @survey.name = nil
        expect(@survey.valid?).to be_falsy
    end

    it 'has at least one question' do
        @survey.questions = []
        expect(@survey.valid?).to be_falsy
    end

end