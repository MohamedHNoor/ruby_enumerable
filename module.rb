module MyEnumerable
  def all?
    return true unless block_given?

    each { |i| return false unless yield i }
    true
  end

  def any?
    each do |i|
      return true if yield(i)
    end
    false
  end

  def filter
    array = []
    each { |i| array.push(i) if yield(i) }
    array
  end
end
