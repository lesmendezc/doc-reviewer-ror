class Survey < ApplicationRecord
    has_many :questions
    accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: lambda { |q| q[:title].blank? }
end
