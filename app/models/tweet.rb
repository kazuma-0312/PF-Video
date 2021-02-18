class Tweet < ApplicationRecord
  belongs_to :user, optional: true
  
  with_options presence: true do
    validates :title
    validates :youtube_url
    validates :text
  end
end
