class StudentAccountMailer < ApplicationMailer
  default from: 'iuliia.kotlenko@hotmail.com'

  def sample_email(user)
    # debugger
    @user = user
    mail(to: "kotlenko.julia@gmail.com", subject: "test")
  end
end
