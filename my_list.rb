require_relative 'my_enumerable'
class MyList
  include MyEnumerable
  def initialize(*lists)
    @list = lists
  end

  def each(&item)
    @list.each(&item)
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 })

puts(list.all? { |e| e > 5 })

# Test #any?
puts(list.any? { |e| e == 2 })

puts(list.any? { |e| e == 5 })

# Test #filter
puts(list.filter(&:odd?))

puts(list.filter(&:even?))
