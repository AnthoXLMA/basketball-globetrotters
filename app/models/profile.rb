class Profile < ApplicationRecord
  skills = %w[
    drills
    jump
    power
    speed
    dunks
    3pts
    independence
    communication
    teamwork
    creativity
    initiative
    stress_management
    perseverance
    decision_making
    adaptability
    enthusiam
    flexibility
  ]
  has_many :events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  has_one_attached :profile_pic
end
