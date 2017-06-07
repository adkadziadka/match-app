class AdminsController < ApplicationController

	def index
		@students = Students.find(params[:id])
	end

	def show
		@students = Student.all
	end

	def promote
	end

	def demote
	end


end
