class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         #        :trackable, authentication_keys: [:login]

  #belongs_to :role, optional: true
  has_many :announcements, dependent: :destroy
  validates :fullname, presence: true
  #before_save :assign_role

  # def assign_role
  # self.role = "User" if role.nil?
  # end

  #attr_writer :login

  #def username
  #  return self.email.split('@')[0].capitalize
  #end

  #def login
  #  self.login || self.email
  #end

end
