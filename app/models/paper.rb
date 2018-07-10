class Paper < ApplicationRecord
    has_one_attached :pdf_file
    acts_as_taggable

    validates :title, presence: { message: " - es un campo obligatorio" }

    validate :exists_file?

    private
    def exists_file?
        errors.add(:base, 'Debe elegir un archivo PDF') unless pdf_file.attached?
    end
end
