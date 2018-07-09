class Paper < ApplicationRecord
    has_one_attached :pdf_file
    acts_as_taggable

    validate :correct_file

    def correct_file
        if pdf_file.attached? && !pdf_file.attachment.blob.content_type.in?(%w(application/pdf))
            errors.add(:pdf_file, 'Debe ser un archivo PDF')
        end
    end
    
end
