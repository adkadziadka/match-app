class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true, uniqueness: true, length: { maximum: 50}
  validates :name, presence: true, uniqueness: true, length: { maximum: 50}
  validates :password, presence: true, length: { minimum: 6}

  def change_status
  	self.update_columns(admin: self.admin ? false : true)
  end

 end
