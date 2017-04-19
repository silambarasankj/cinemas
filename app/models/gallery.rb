class Gallery < ApplicationRecord
  belongs_to :user
  has_attached_file :image #, styles: { small: "64x64", med: "100x100", large: "200x200" }, :if => :is_type_of_image?
  #validates_attachment_content_type : image, content_type: /\Aimage\/.*\z/
  validates :image, :attachment_presence => true

  validates_attachment_content_type :image,
    :content_type => ['video/webm'],
    :message => "Sorry, right now we only support MP4 video",
    :if => :is_type_of_video?

    validates_attachment_content_type :image,
     :content_type => ['image/png', 'image/jpeg', 'image/jpg', 'image/gif'],
     :message => "Different error message",
     :if => :is_type_of_image?

delegate :name, :to => :user, :prefix => true

  protected
  def is_type_of_video?
    image.content_type =~ %r(video)
  end

  def is_type_of_image?
    image.content_type =~ %r(image)
  end
 end
