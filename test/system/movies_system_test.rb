# frozen_string_literal: true

require 'application_system_test_case'

class MoviesSystemTest < ApplicationSystemTestCase
  test 'visiting the show page' do
    director = Director.create!(name: 'Boon Jong-Ho')
    movie = Movie.create!(title: 'Parasite', director_id: director.id)
    visit("/movies/#{movie.id}")
    assert_text 'Parasite'
    assert_text 'Boon Jong-Ho'
  end

  test 'visiting the show page for another movie' do
    director = Director.create!(name: 'James Cameron')
    movie = Movie.create!(title: 'Titanic', director_id: director.id)
    visit("/movies/#{movie.id}")
    assert_text 'Titanic'
    assert_text 'James Cameron'
  end
end
