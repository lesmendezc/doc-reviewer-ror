class Survey < ApplicationRecord
    has_many :questions
    has_many :reviews
    belongs_to :event
    accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: lambda { |q| q[:description].blank? }
end
