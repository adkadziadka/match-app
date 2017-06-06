class ProfilesController < ApplicationController

	def new
		@profile = Profile.new
	end

	def create
		@profile = current_student.build_profile(profile_params)

		if @profile.save
			redirect_to edit_profile_path(@profile), notice: "Name added!"
		else
			render :new
		end
	end

	private

	def profile_params
		params.require(:profile).permit(:name)
	end
end
