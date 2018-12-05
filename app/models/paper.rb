class Paper < ApplicationRecord
    has_many :comments
    
    belongs_to :user
    belongs_to :event
    
    has_one :review
    has_one :assingment
    has_one :classroom
    
    has_one_attached :pdf_file
    acts_as_taggable

    paginates_per 6

    after_update :send_notification

    def send_notification
        PaperMailer.status_notification(self.user, self).deliver
    end
end
