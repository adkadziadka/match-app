class AdminsController < ApplicationController

	def index
		@students = Student.select(:name).map(&:name)
		@teams = RoundRobinTournament.schedule(@students)
	end

	def students_list
		@students = Student.all
	end

	def upgrade
		@students = Student.all
		@student = Student.find(params[:student_id])
		@student.change_status

		render :students_list
	end

	private

end
