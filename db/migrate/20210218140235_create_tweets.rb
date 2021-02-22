class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string   :title,   null: false, default: ""
      t.string   :youtube_url, null: false, default: ""
      t.string   :text,      null: false, default: ""
      t.references   :user,         foreign_key: true
      t.string   :comment_id,         foreign_key: true
      t.string   :like_id,         foreign_key: true
      t.timestamps
    end
  end
end
