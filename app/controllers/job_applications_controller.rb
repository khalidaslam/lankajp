class JobApplicationsController < ApplicationController
  around_filter :catch_not_found
  before_filter :admin_restrict!, :except => [:new, :create]


  def index
    @job = Job.find(params[:job_id])
    @job_applications = @job.job_applications.where(created_at: 90.days.ago..Time.now).order("updated_at DESC").page(params[:page]).per_page(1)
  end



  def show
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.find(params[:id])
  end



  def new
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.build
  end



  def edit
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.find(params[:id])
  end



  def create
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.build(params[:job_application])
      if user_signed_in?
      @job_application.update_attribute(:user_id, current_user.id)
      end
      if @job_application.save
        JobMailer.jobapplication_acknowledgment(@job_application).deliver
        redirect_to([@job], :notice => 'Job application successfully sent.') 
      else
        render 'new'
      end
  end



  def update
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.find(params[:id])

      if @job_application.update_attributes(params[:job_application])
        redirect_to job_job_applications_url(@job) , :notice => 'Job application successfully updated.'
      else
        render 'edit'
      end
  end


  def destroy
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.find(params[:id])
    @job_application.destroy

    redirect_to job_job_applications_url(@job)
  end



end
