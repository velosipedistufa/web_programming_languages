# frozen_string_literal: true

# comments
class Processor
  @counter = 0
  def self.elementaly(_epsylon)
    Enumerator::Lazy.new(0..Float::INFINITY) do |anarray, n|
      anarray << ((-1)**n) * ((3**(2 * n + 1)) / Math.gamma((2 * n + 1) + 1))
    end
  end

  def self.sin(epsylon)
    @counter = 0
    elementaly(3).take_while do |elem|
      @counter += 1
      elem.abs >= epsylon
    end.reduce(:+)
  end

  class << self
    attr_reader :counter
  end
end
