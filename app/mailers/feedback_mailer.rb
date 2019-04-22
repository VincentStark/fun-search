class FeedbackMailer < ActionMailer::Base

  default from: "feedback@" + Settings.appdomain
  default to: "contact@" + Settings.appdomain

  def new_message(feedback)
    @feedback = feedback
    mail(:subject => "[" + Settings.appdomain + "] Feedback from #{@feedback.name}")
  end
end
