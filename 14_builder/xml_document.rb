class XmlDocument

  def initialize(indent=nil)
    @indent = indent
    @level = 0
  end

  def method_missing(meth, attrs={}, &block)
    document = ''
    attr_string = ''
    if block_given?
      if @indent
	document += '  ' * @level
	@level += 1
      end
      attrs.each { |k, v| attr_string += " #{k}='#{v}'" }
      document += "<#{meth.to_s}#{attr_string}>"
      document += "\n" if @level > 0
      document += "#{yield}"
      @level -= 1 if @level > 0
      document += '  ' * @level + "</#{meth.to_s}>"
      document += "\n" if @indent
      document
    else
      attrs.each { |k, v| attr_string += " #{k}='#{v}'" }
      document = '  ' * @level + "<#{meth.to_s}#{attr_string}/>"
      document += "\n" if @indent
      document
    end
  end

end