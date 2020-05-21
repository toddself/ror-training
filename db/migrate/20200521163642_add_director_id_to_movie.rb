class AddDirectorIdToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :director_id, :integer

    Movie.all.each do |m|
      if m.director != ''
        d = Director.create_or_find_by!(name: m.director)
        m.director_id = d.id
        m.save
      else
        puts "#{m.title} has no director"
      end
    end
  end
end
