class Array

  def sum
    self.empty? ? 0 : self.reduce(:+)
  end

  def square
    self.collect {|i| i*i}
  end

  def square!
    self.replace self.square
  end

end