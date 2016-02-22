class AddYoutubeUrlToMuscles < ActiveRecord::Migration
  def change
    add_column :muscles, :youtube_url, :string
  end
end
