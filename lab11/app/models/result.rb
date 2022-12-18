# frozen_string_literal: true

class Result < ApplicationRecord
 validates :in, uniqueness: true
end
