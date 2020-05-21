# frozen_string_literal: true

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test 'movie is valid with a title and director' do
    director = Director.create!(name: 'Bong Joon-Ho', age: 20)
    movie = Movie.create!(title: 'Parasite', director_id: director.id)

    assert_equal movie.title, 'Parasite'
    assert_equal movie.director, director
  end

  test 'movie is not valid without a title' do
    director = Director.create!(name: 'Bong Joon-Ho', age: 20)
    movie = Movie.new(title: '', director: director)

    refute movie.valid?
  end
end
