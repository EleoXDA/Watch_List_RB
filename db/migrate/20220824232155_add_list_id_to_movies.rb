class AddListIdToMovies < ActiveRecord::Migration[7.0]
  def change
    add_reference :movies, :list, null: false, foreign_key: true
  end
end
