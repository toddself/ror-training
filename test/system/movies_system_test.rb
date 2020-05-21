# frozen_string_literal: true

require 'application_system_test_case'

class MoviesSystemTest < ApplicationSystemTestCase
  test 'visiting the show page' do
    movie = Movie.create!(title: 'Parasite', director: 'Bong Joon-Ho')
    visit("/movies/#{movie.id}")
    assert_text 'Parasite'
    assert_text 'Boon Jong-Ho'
  end

  test 'visiting the show page for another movie' do
    movie = Movie.create!(title: 'Titanic', director: 'James Cameron')
    visit("/movies/#{movie.id}")
    assert_text 'Titanic'
    assert_text 'James Cameron'
  end
end
