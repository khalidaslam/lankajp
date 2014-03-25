class EmployerController < ApplicationController

  def link
  linkcode = params[:linkcode]
	  if linkcode.length == 64
	  	@job = Job.find_by_employerlinkcode linkcode
	  end

	  if @job.nil?
	  	redirect_to root_url, :flash => { :notice => 'Record Not Found.' }
	  else
	  	@job_applications = @job.job_applications.page(params[:page]).per_page(50)
	  	return
	  end
  end

end
