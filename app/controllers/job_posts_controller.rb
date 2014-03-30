class JobPostsController < ApplicationController
  around_filter :catch_not_found
  before_filter :admin_restrict!, :except => [:new, :create]


  def index
        @job_posts = JobPost.where(created_at: 60.days.ago..Time.now).order("created_at DESC").job_post_search(params[:adminquery]).page(params[:page]).per_page(10)
  end



  def show
    @job_post = JobPost.find(params[:id])
  end



  def new
    @job_post = JobPost.new
  end



  def edit
    @job_post = JobPost.find(params[:id])
  end



  def create
    @job_post = JobPost.new(params[:job_post])
    @job_post.jobuuid = SecureRandom.hex(7)
    
    if @job_post.save
        if user_signed_in?
          @job_post.update_attribute(:user_id, current_user.id)
        end
      # Handle a successful save.
      # Email to JobPoster
      JobMailer.jobposting_acknowledgment(@job_post).deliver
      # Email to Admin
      JobMailer.jobposting_adminnotification(@job_post).deliver
      flash[:notice] = "Job posting is received and is being manually reviewed."
      redirect_to root_path
    else
      render 'new'
    end 
  end



  def update
      @job_post = JobPost.find(params[:id])
      if @job_post.update_attributes(params[:job_post])
        flash[:notice] = "Job post was successfully updated."
        redirect_to @job_post
      else
        render 'edit'
      end
  end



  def destroy
    @job_post = JobPost.find(params[:id])
    @job_post.destroy
    redirect_to job_posts_path
  end


  
end
