class ApplicationController < ActionController::Base
  protect_from_forgery

protected
  def authorize_admin!
    if user_signed_in? && current_user.isadmin
      return
    elsif user_signed_in?
      flash[:notice] = 'Not authorised for this task'
      redirect_to :root
    else
      flash[:notice] = 'You need to sign in first'
      redirect_to new_user_session_path
    end
  end

  def admin_restrict!
    unless user_signed_in? && current_user.isadmin
    redirect_to root_url, :flash => { :notice => 'Resource Not Found.' }
    end
  end


  def catch_not_found
    yield
  rescue ActiveRecord::RecordNotFound
    redirect_to root_url, :flash => { :notice => 'Record Not Found.' }
  end


end
