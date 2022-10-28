module MyEnumerable
  def all?
    each do |element|
      return false if yield(element) == false
    end
    true
  end

  def any?
    each do |element|
      return true if yield(element) == true
    end
    false
  end

  def filter
    lists = []
    each { |element| lists.push(element) if yield(element) }
    puts(lists)
  end
end
