require 'pry'

class Luhn


def validation (x)
  ary = x.to_s.split('').map(&:to_i)
  ary.last


  if x.length = 16
    ary = x.to_s.split('').map(&:to_i)
    evens = []
    ary.each_with_index{|item, i| evens << item if i % 2 == 0}
    doubles = []
    evens.each {|even| doubles << even*2}
    odds = []
    ary.each_with_index{|item, i| odds << item if i % 2 == 1}
join then split
    # split doubles into integers
    # combine odds and doubles together


  elsif x.length = 15
    ary = x.to_s.split('').map(&:to_i)

    elseif x.length = 14
    ary = x.to_s.split('').map(&:to_i)

    else x.length = 13
      ary = x.to_s.split('').map(&:to_i)

end

array.select_with_index{|item, i| item if i % 2 == 0} for evens

array.select_with_index{|item, i| item if i % 2 == 1} for odds

4408041234567893


  def valid?
    #  that takes an integer and returns either true or false, depending on whether the number is valid

    if
      # x/10 = integer
      return true
    else
      return false

    end
  end

end

