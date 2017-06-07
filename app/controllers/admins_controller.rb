class AdminsController < ApplicationController

	def index
		@students = Students.all
	end

	def promote
	end

	def demote
	end

end
