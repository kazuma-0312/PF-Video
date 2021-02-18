class Tweet < ApplicationRecord
  belongs_to :user, optional: true
  
  with_options presence: true do
    validates :title
    validates :youtube_url
    validates :text
  end

  def self.search(search)
    if search != ''
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
