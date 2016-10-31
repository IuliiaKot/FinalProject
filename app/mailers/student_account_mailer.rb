class StudentAccountMailer < ApplicationMailer
  default from: 'iuliia.kotlenko@hotmail.com'

  def sample_email(user, password)
    # debugger
    @user = user
    @password = password
    mail(to: user.email, subject: "Account info")
  end
end
