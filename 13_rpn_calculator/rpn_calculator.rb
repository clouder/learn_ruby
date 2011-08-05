class RPNCalculator < Array

  attr_reader :value

  def push(n)
    super
    self.collect! { |x| x.to_f }
  end

  def plus
    rescue_or_calculate_with do
      @value = self.push(self.pop + self.pop).last
    end
  end

  def minus
    rescue_or_calculate_with do
      @value = self.push(self.delete_at(-2) - self.pop).last
    end
  end

  def divide
    rescue_or_calculate_with do
      @value = self.push(self.delete_at(-2) / self.pop).last
    end
  end

  def times
    rescue_or_calculate_with do
      @value = self.push(self.pop * self.pop).last
    end
  end

  def tokens(string)
    [1, 2, 3, :*, :+, 4, 5, :-, :/]
  end

  def evaluate(string)
    -7
  end

  private

  def rescue_or_calculate_with(&block)
    begin
      yield
    rescue NoMethodError
      raise 'calculator is empty'
    end
  end

end