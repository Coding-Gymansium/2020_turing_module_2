class AddMoviesToStudios < ActiveRecord::Migration[5.2]
  def change
    add_reference :studios, :movie, foreign_key: true
  end
end
