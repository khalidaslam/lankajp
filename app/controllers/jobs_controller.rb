class JobsController < ApplicationController
  around_filter :catch_not_found
  before_filter :admin_restrict!, :except => [:index, :show]


  def index
    @jobs = Job.where(created_at: 15.days.ago..Time.now).order("updated_at DESC").jobs_search(params[:query]).page(params[:page]).per_page(10)
  end



  def show
    @job = Job.find(params[:id])
  end


  def new
    @job = Job.new
  end



  def edit
    @job = Job.find(params[:id])
  end



  def create
    @job = Job.new(params[:job])
    @job.employerlinkcode = SecureRandom.hex(32)
    @job.tags = job_tagger(@job)

     if @job.save
      # Handle a successful save.
         if @job.postemailack == true
          JobMailer.jobposting_confirmation(@job).deliver
         end
      redirect_to root_url
      flash[:notice] = "Jobs successfully created"
    else
      render 'new'
    end 
  end



  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(params[:job])
      redirect_to(:action => :show, :id => @job.id)
      flash[:notice] = "Job successfully updated"
    else
      render 'edit'
    end
  end



  def destroy
    Job.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to root_url
  end

private

def job_tagger(job)
  jbc = "Sri Lanka"
  [jbc, job.title, job.companyname, job.city.name, job.city.province.name, job.classification.name,
  job.worktype.name, job.careerlevel.name, job.jobskills].join(" ")
end

end
