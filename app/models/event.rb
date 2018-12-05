class Event < ApplicationRecord
    has_many :papers
    has_one :survey
end
