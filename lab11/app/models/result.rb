# frozen_string_literal: true

class Result < ApplicationRecord
  validates :in, :numericality => { :greater_than_or_equal_to => 0 }

  validates :in, uniqueness: true
end
