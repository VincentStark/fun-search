class UserMailer < ActionMailer::Base
  default from: "welcome@" + Settings.appdomain

  def welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Your registration on " + Settings.appname)
  end
end
