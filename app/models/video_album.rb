class VideoAlbum < ApplicationRecord
  has_one_attached :thumbnail       
  has_one_attached :video      
  belongs_to :user
  has_and_belongs_to_many :tags

  def self.ransackable_attributes(auth_object = nil)
      ["Published", "created_at", "desc", "id", "title", "updated_at", "user_id", "tag_list"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["tags", "thumbnail_attachment", "thumbnail_blob", "user", "video_attachment", "video_blob"]
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
