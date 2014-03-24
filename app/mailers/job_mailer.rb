class JobMailer < ActionMailer::Base
require 'open-uri'
  default :from => "noreply@lankajobpost.com"
  default :to => "admin@lankajobpost.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.job_mailer.jobposting_acknowledgment.subject
  #
  def jobapplication_acknowledgment(jobapplication)
    @jobapplication = jobapplication
    @job = @jobapplication.job
    jobtitle = @job.title[0..20].gsub(/\s\w+\s*$/, '...')
    
        if Rails.env == 'production'
          attachments[jobapplication.resume_file_name] = open("#{jobapplication.resume.url}").read 
        else
          attachments[jobapplication.resume_file_name] = open("#{jobapplication.resume.path}").read
        end    

        if @job.cvemailoption == true
          mail from: @jobapplication.email, to: @job.companyemail, subject: "Mr #{@jobapplication.name} has applied for #{jobtitle} -- Courtesy of lankajobpost.com"
        end
  end

  def jobposting_acknowledgment(job_post)
    @job_post = job_post
    mail to: job_post.email, subject: "Lankajobpost.com - Your Job Posting is Received"
  end

  def jobposting_adminnotification(job_post)
    @job_post = job_post
    mail subject: "Dear Admin - Lankajobpost.com has received a job post"
  end

  def jobposting_confirmation(job)
    @job = job
    mail to: job.companyemail, subject: "Lankajobpost.com - Your Job Post is Live"
  end


  def jobpayment_notification(job)
  end

  def contact_message(message)
    @message = message
    mail(:subject => "#{message.subject}")
  end

  def promotional_message(promotion)
    @promotion = promotion
    attachments.inline['galaxynotepromo.jpg'] = File.read("#{Rails.root}/app/assets/images/galaxynotepromo.jpg")
    attachments.inline['logo.png'] = File.read("#{Rails.root}/app/assets/images/logo.png")
    mail to: "", bcc: "#{promotion.contactlist}",
    from: "Lankajobpost.com <admin@lankajobpost.com>", :subject => "#{promotion.subject}"
  end

end
