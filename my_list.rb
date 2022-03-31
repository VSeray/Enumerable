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
# Create our list
irb> list = MyList.new(1, 2, 3, 4)
# => <MyList: @list=[1, 2, 3, 4]>

# Test #all?
irb> list = MyList.new(1, 2, 3, 4)
# => true
irb> list.my_all? {|e| e > 5}
# => false

# Test #any?
irb> list.my_any? {|e| e == 2}
# => true
irb> list.my_any? {|e| e == 5}
# => false

# Test #filter
irb> list.my_filter? {|e| e.even?}
# => [2, 4]
