class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  

  private

  def after_sign_in_path_for(resource)
    case resource
    when Student then 'shared/student'
    when Admin then 'shared/admin'
    end
  end


  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :student
    	new_student_session_path
    elsif resource_or_scope == :admin
    	new_admin_session_path
    else
    	root_path
    end
  end

end
