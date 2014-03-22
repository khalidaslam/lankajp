class JobApplicationsController < ApplicationController
  # GET jobs/1/job_applications
  # GET jobs/1/job_applications.json
  def index
    @job = Job.find(params[:job_id])
    @job_applications = @job.job_applications

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @job_applications }
    end
  end

  # GET jobs/1/job_applications/1
  # GET jobs/1/job_applications/1.json
  def show
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @job_application }
    end
  end

  # GET jobs/1/job_applications/new
  # GET jobs/1/job_applications/new.json
  def new
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @job_application }
    end
  end

  # GET jobs/1/job_applications/1/edit
  def edit
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.find(params[:id])
  end

  # POST jobs/1/job_applications
  # POST jobs/1/job_applications.json
  def create
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.build(params[:job_application])

    respond_to do |format|
      if @job_application.save
        format.html { redirect_to([@job_application.job, @job_application], :notice => 'Job application was successfully created.') }
        format.json { render :json => @job_application, :status => :created, :location => [@job_application.job, @job_application] }
      else
        format.html { render :action => "new" }
        format.json { render :json => @job_application.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT jobs/1/job_applications/1
  # PUT jobs/1/job_applications/1.json
  def update
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.find(params[:id])

    respond_to do |format|
      if @job_application.update_attributes(params[:job_application])
        format.html { redirect_to([@job_application.job, @job_application], :notice => 'Job application was successfully updated.') }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @job_application.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE jobs/1/job_applications/1
  # DELETE jobs/1/job_applications/1.json
  def destroy
    @job = Job.find(params[:job_id])
    @job_application = @job.job_applications.find(params[:id])
    @job_application.destroy

    respond_to do |format|
      format.html { redirect_to job_job_applications_url(job) }
      format.json { head :ok }
    end
  end
end
