class StudentAccountMailer < ApplicationMailer
  default from: 'iuliia.kotlenko@hotmail.com'

  def sample_email(user, password)
    # debugger
    @user = user
    @password = password
    mail(to: user.email, subject: "Account info")
    # mg_client = Mailgun::Client.new ENV['MAILGUN_API_KEY']
    # message_params = {:from    => "kotlenko.julia@gmail.com",
    #                   :to      => "iuliia@devbootcamp.com",
    #                   :subject => 'Sample Mail using Mailgun API',
    #                   :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
    # mg_client.send_message ENV['MAILGUN_DOMAIN'], message_params
  end
end
