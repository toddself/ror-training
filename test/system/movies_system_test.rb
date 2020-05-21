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

  test 'visiting the index page' do
    # create two movies
    # visit index page
    # assert we can see them
    d1 = Director.create!(name: 'Boon Jong-Ho')
    Movie.create!(title: 'Parasite', director_id: d1.id)
    d2 = Director.create!(name: 'James Cameron')
    Movie.create!(title: 'Titanic', director_id: d2.id)

    visit('/movies/')
    assert_text 'Parasite'
    assert_text 'Boon Jong-Ho'
    assert_text 'Titanic'
    assert_text 'James Cameron'
  end
end
