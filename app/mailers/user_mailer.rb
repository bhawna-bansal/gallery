class UserMailer < ApplicationMailer
  default from: '74875e1a22f9a8'
  def welcome_send(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_up'
    mail(to: @user.email,subject: 'welcome to my awesome site')
  end
end