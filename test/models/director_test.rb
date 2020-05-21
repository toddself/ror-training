# frozen_string_literal: true

require 'test_helper'

class DirectorTest < ActiveSupport::TestCase
  test 'director is valid with age and name' do
    director = Director.create!(name: 'James Cameron', age: 75)
    assert_equal director.name, 'James Cameron'
    assert_equal director.age, 75
    assert_equal director.movies.count, 0
  end
end
