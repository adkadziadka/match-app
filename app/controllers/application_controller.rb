class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  

  private

  def after_sign_in_path_for(resource)
    if resource == :student
      new_student_session_path
    elsif resource == :admin
      students_list_path
    else
      root_path
    end
  end


  def after_sign_out_path_for(resource_or_scope)
    	root_path
  end

end
