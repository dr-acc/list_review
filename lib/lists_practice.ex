defmodule ListsPractice do
  #length of a list
  # [] = 0
  # [1, 2, 3] = 3
  def len([]), do: 0
  def len([ _head | tail ]), do: 1 + len(tail)


  #sum of nums in a list
  # [] = 0
  # [1, 2, 3] = 9
  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)

  #list of nums returns list of squares
  # [] = []
  # [1, 2, 3] = [1, 4, 9]
  def square([]), do: []
  def square( [head | tail ]), do: [ head * head | square(tail)]


  #list that doubles its original nums
  # [] = []
  # [1, 2, 3] = [2, 4, 6]
  def double([]), do: []
  def double( [head | tail ]), do: [ 2 * head | double(tail)]


  #having created these functions with multiple function heads, refactoring
  #does the same thing as Enum.map
  def apply_func([], _func), do: []
  def apply_func([ head | tail], func), do: [func.(head) | apply_func(tail, func)]

  #applying a pattern to a list by unpacking head and pattern matching
  #add together pairs in the list
  def add_pairs([]), do: []
  def add_pairs([ head1, head2 | tail]), do: [head1 + head2 | add_pairs(tail)]
end
