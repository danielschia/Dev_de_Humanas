class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum kind: [:user, :admin]
  after_initialize :set_default_kind, :if => :new_record?

  def set_default_kind
    self.kind ||= :user
  end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :pages
  has_many :likes
    
end
