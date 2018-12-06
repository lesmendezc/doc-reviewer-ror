class Question < ApplicationRecord
  belongs_to :survey
  has_many :options
  
  validates_presence_of :type

  accepts_nested_attributes_for :options, allow_destroy: true, reject_if: lambda { |a| a[:point].blank? }
end
