class StudentsController < ApplicationController
	
	def index
		@students = Student.all
	end

	private


end
