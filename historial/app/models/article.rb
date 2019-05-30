class Article < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :fecha, presence: true
    validates :body, presence: true

    has_attached_file :cover, styles: { medium: "1280x720", thumb:"800x600" }
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

    has_attached_file :documents
    

end
