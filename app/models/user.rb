class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  has_many :video_albums
  after_create :welcome_send
  
  private
  def welcome_send
    UserMailer.welcome_send(self).deliver
  end
end