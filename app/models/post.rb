class Post < ApplicationRecord
  has_attached_file :image, styles: { large: "1180x530>", medium: "590x265>", thumb: "130x130#"}
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
