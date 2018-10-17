class Paper < ApplicationRecord
    has_many :comments
    has_many :reviews
    belongs_to :user
    belongs_to :event
    has_one :assingment
    has_one_attached :pdf_file
    acts_as_taggable
end
