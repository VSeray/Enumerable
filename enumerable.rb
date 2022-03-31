module MyEnumerable
  def all? (&block)
  result = true 
  @list.each{|item| result = false unless block.call(item)}
  result
  end

  def any?(&block)
    result = false
    @list.each{|item| result = true if block.call(item)}
    result
  end

  def filter(&block)
    result = []
    @list.each {|item| result << item if block.call(item)}
    result
  end 
  
end