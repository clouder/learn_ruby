class Blocker
  
  def execute(x=nil)
    yield
    yield
    yield
  end
  
  def add_one
    yield + 1
  end
  
end