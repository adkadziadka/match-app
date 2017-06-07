class AdminsController < ApplicationController

	def index
		@students = Student.all
	end

	def students_list
		@students = Student.all
	end

	private


end
