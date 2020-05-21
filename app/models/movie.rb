# frozen_string_literal: true

# A movie
class Movie < ApplicationRecord
  validates_presence_of :title

  belongs_to :director
end
