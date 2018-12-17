class Question < ApplicationRecord
  belongs_to :survey
  has_many :options, dependent: :destroy
  has_many :evaluations, dependent: :destroy
  
  validates_presence_of :type
  validates_presence_of :title

  accepts_nested_attributes_for :options, allow_destroy: true, reject_if: lambda { |a| a[:point].blank? }

  def self.default_type
    'Questions::SelectOption'
  end

  def display_type
    type ? type.constantize.display_type : 'Type not set'
  end
end
