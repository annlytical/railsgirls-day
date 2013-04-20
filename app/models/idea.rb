class Idea < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
  attr_accessible :description, :name, :picture

  belongs_to :user
  has_many :comments

  validates :name, :description, :presence => true
end
