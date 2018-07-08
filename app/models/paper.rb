class Paper < ApplicationRecord
    has_one_attached :pdf_file
    acts_as_taggable
    acts_as_taggable_on :tag_list
end
