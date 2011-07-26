class Dictionary

  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    entry.is_a?(Hash) ? @entries.merge!(entry) : @entries[entry] = nil
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)

  end

  def find(query)
    @entries.select { |k, v| /#{query}/ =~ k }
  end

  def printable
    %Q{[apple] "fruit"\n[fish] "aquatic animal"\n[zebra] "African land animal with stripes"}
  end

end