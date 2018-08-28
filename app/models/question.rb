class Question < ApplicationRecord
  belongs_to :review
  has_many :answers
  accepts_nested_attributes_for :answers, allow_destroy: true

  #enum answer_type: [:respuesta_corta, :opciones_escala_likert]
end
