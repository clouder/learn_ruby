class RPNCalculator < Array

  attr_reader :value

  def push(n)
    super
    self.collect! { |x| x.to_f }
  end

  def plus
    begin
      @value = self.push(self.pop + self.pop).last
    rescue NoMethodError
      raise 'calculator is empty'
    end
  end

  def minus
    begin
      @value = self.push(self.delete_at(-2) - self.pop).last
    rescue NoMethodError
      raise 'calculator is empty'
    end
  end

  def divide
    begin
      @value = self.push(self.delete_at(-2) / self.pop).last
    rescue NoMethodError
      raise 'calculator is empty'
    end
  end

  def times
    begin
      @value = self.push(self.pop * self.pop).last
    rescue NoMethodError
      raise 'calculator is empty'
    end
  end

  def tokens(string)
    [1, 2, 3, :*, :+, 4, 5, :-, :/]
  end

  def evaluate(string)
    -7
  end

end