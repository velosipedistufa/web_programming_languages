# frozen_string_literal: true

def processing(arr)
  result = []
  temp = []
  arr.push(arr.last - 1).each_cons(2) do |pair|
    if pair[0] <= pair[1]
      temp << pair[0]
    elsif !temp.empty?
      temp << pair [0]
      result.push(temp)
      temp = []
    end
  end
  (result.sort_by { |str| -str[0] })
end
