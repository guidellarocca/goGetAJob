class Job < ApplicationRecord
    belongs_to :user
    mount_uploader :avatar, AvatarUploader
    has_many :favorites, as: :favorited
    has_many :fans, through: :favorites, source: :user

    JOB_TYPES = ["Full-time", "Part-time", "Contract", "Freelance"]

    
end
