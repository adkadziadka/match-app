class AdminsController < ApplicationController

	def index
		@students = Student.find(params[:id])
	end

	def show
		@students = Student.all
	end

	private

end
