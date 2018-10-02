class User < ApplicationRecord
  has_many :papers
  
  enum role: [:estudiante, :tutor, :relator, :docente, :admin]
  after_initialize :set_default_role, :if => :new_record?

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

  def set_default_role
    self.role ||= :estudiante
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

end
