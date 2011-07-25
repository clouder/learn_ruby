class Timer
  
  attr_reader :seconds
  
  def initialize
    @seconds = 0
  end
  
  def seconds=(s)
    @seconds = s
    hours = @seconds / 3600
    minutes = @seconds % 3600 / 60
    seconds = @seconds % 60
    @time_string = "%02d:%02d:%02d" % [ hours, minutes, seconds ]
  end
  
  def time_string
    @time_string
  end
  
end