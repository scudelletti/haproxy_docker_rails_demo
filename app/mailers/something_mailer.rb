class SomethingMailer < ActionMailer::Base
  default to: 'someone@someplace.com',
          from: "somebody@someplace.com"

  def welcome_mail(hostname)
    mail(subject: "Welcome to some Test Mail :) HOSTNAME: #{hostname}",
         body: "Welcome to the Test Mail Body Part! HOSTNAME: #{hostname}")
  end
end
