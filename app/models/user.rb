class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :video_albums
  after_create :welcome_email
  
  # private
  # def welcome_email
  #   UserMailer.welcome_email(self).deliver
  # end
end