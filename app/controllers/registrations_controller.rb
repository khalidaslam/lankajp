class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:alert] = 'Registrations are by invitation only for the moment, but please check back soon'
    redirect_to root_path
  end

  def create
    flash[:alert] = 'Registrations are by invitation only for the moment, but please check back soon'
    redirect_to root_path
  end
end