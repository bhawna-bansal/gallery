class UserMailer < ApplicationMailer
  default from: 'bansalbhawna30@gmail.com'
  def welcome_send(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_up'
    mail(to: @user.email,subject: 'welcome to my awesome site')
  end
end