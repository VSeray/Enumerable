require_relative './enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

# verify solution

# Test #all?
list = MyList.new(1, 2, 3, 4)
# => true
list.my_all? { |e| e > 5 }
# => false

# Test #any?
list.my_any? { |e| e == 2 }
# => true
list.my_any? { |e| e == 5 }
# => false

# Test #filter
list.my_filter? (&:even?)
# => [2, 4]
