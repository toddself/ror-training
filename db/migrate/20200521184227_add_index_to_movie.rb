class AddIndexToMovie < ActiveRecord::Migration[6.0]
  def change
    add_index :movies, :director_id
  end
end
