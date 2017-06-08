class StudentsController < ApplicationController

	def upgrade
		student = Student.find(params[:id])
		if student.upgrade( :admin => true )
			redirect_to admins_path
		else
			render 'edit'
		end
	end

	private

end
