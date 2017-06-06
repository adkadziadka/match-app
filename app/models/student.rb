class Student < ApplicationRecord
	has_one :profile

	def has_profile?
		profile.present? && profile.persisted
	end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
