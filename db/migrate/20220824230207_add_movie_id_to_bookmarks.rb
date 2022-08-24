class AddMovieIdToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :movie, null: false, foreign_key: true
  end
end
