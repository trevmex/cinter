class AttendeeMailer < ActionMailer::Base
  default from: "DONOTREPLY@trevreport.org"

  def welcome_email(attendee)
  	@attendee = attendee
  	mail(to: "\"#{@attendee.name}\" <#{@attendee.email}>", subject: 'Welcome to the Lalish-Menagh 25th of December Gift Bonanza!')
  end
end
