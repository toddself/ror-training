class AssociateDirectorToMovie < ActiveRecord::Migration[6.0]
  def up
    rename_column :movies, :director, :director_name
    remove_column :movies, :director, :string

    Movie.all.each do |m|
      director = Director.find_or_create_by(name: m.director_name)
      m.director = director
    end

    remove_column :movies, :director_name, :string
  end
end
