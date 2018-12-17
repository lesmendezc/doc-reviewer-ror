require 'rails_helper'

describe Survey do
    fixtures :surveys

    it 'always has a name' do
        survey =  surveys(:one)
        survey.name = nil
        expect(survey.valid?).to be_falsy
    end

end