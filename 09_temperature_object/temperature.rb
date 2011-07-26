class Temperature

  def initialize(temp, celsius=false)
    if celsius
      @degrees_celsius = temp
    else
      @degrees_fahrenheit = temp
    end
  end

  def degrees_fahrenheit
    @degrees_fahrenheit ||= (@degrees_celsius * 9.0/5) + 32
  end

  def degrees_celsius
    @degrees_celsius ||= (@degrees_fahrenheit - 32) * (5.0/9)
  end

  def self.from_celsius(temp)
    Temperature.new(temp, true)
  end

end