class ProfilesController < ApplicationController
	before_action :set_profile, only: [:edit, :update]
	before_action :authenticate_user!

	def new
		@prodile =Profile.new
	end

	def create
		@profile = current_student.build_profile(profile_params)

		if @profile.save
			redirect_to edit_profile_path(@profile), notice: "Name added!"
		else
			render :new
		end
	end
	def edit
	end

	def update
		if @profile.update(profile_params)
			redirect_to edit_profile_path(@profile), notice: "Name updated!"
		else
			render :edit
		end
	end

	private

	def set_profile
		@profile = current_student.profile
	end

	def profile_params
		params.require(:profile).permit(:name)
	end
end
