require_relative 'module'
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

# # Create our list
list = MyList.new(1, 2, 3, 4)
# => #<MyList: @list=[1, 2, 3, 4]>

# # Test #all?
print(list.all? { |e| e < 5 })
# => true
print(list.all? { |e| e > 5 })
# => false

# # Test #any?
print(list.any? { |e| e == 2 })
# => true
print(list.any? { |e| e == 5 })
# => false

# # Test #filter
print list.filter(&:even?)
# => [2, 4]
