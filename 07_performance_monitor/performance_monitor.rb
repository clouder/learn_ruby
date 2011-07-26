class PerformanceMonitor

  def run(repeat=1, &block)
    trials = []
    repeat.times do
      start = Time.now
      yield
      finish = Time.now
      trials << finish - start
    end
    trials.reduce(:+)/trials.size
  end

end