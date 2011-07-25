class Temperature
  
  def initialize(temp, celcius=false)
    if celcius
      @degrees_celcius = temp
    else
      @degrees_fahrenheit = temp
    end
  end
  
  def degrees_fahrenheit
    @degrees_fahrenheit ||= (@degrees_celcius * 9.0/5) + 32
  end
  
  def degrees_celcius
    @degrees_celcius ||= (@degrees_fahrenheit - 32) * (5.0/9)
  end
  
  def self.from_celcius(temp)
    Temperature.new(temp, true)
  end
  
end