require 'rails_helper'

RSpec.describe Student, type: :model do
	describe "validations" do
		it "is invalid without a name" do
			student = Student.new(name: "")
			student.valid?
			expect(student.errors).to have_key(:name)
		end

		it "is invalid a duplicate email" do
			Student.create!(email: "student@student.com", password: "1234qwerty", name: "Omar")
			student = Student.new(email: "student@student.com")
			student.valid?
			expect(student.errors).to have_key(:email)
		end
	end
end		
