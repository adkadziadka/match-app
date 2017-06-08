class StudentsController < ApplicationController
	
	def index
		@students = Student.all
	end

	def upgrade
		student = Student.find(params[:id])
		student.upgrade( :admin => true )
			redirect_to admins_path
		else
			render 'edit'
		end
	end

	private

end
