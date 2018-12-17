require 'rails_helper'

describe Question do
    fixtures :questions

    before(:example) do
        @select_option = questions(:select_option_one)
    end

    it 'always has a type' do
        @select_option.type = nil
        expect(@select_option.valid?).to be_falsy
    end

    it 'always have a title' do
        @select_option.title = nil
        expect(@select_option.valid?).to be_falsy
    end

    context :Text do
        it 'always has a description' do
            @text = questions(:text_one)
            @text.description = nil
            expect(@text.valid?).to be_falsy
        end
    end

    context :SelectOption do
        it 'always has a max score' do
            @select_option.max_score = nil
            expect(@select_option.valid?).to be_falsy
        end
    end
end