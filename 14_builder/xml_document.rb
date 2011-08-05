class XmlDocument

  def initialize(pretty=false)
    @level = 0
    @pretty = pretty
    @xml = ''
  end

  def method_missing(meth, attrs={}, &block)
    tag = meth.to_s
    attr_string = ''
    @xml = ''
    attrs.each { |k, v| attr_string += " #{k}='#{v}'" }
    @xml += "<#{tag + attr_string}>"
    if block_given?
      _format if @pretty
      @xml += "#{yield}</#{tag}>"
      _format(true) if @pretty
    else
      @xml.gsub!(/>$/, '/>')
      _format(true) if @pretty
    end
    @xml
  end

  private

  def _format(end_tag=false)
    @level += 1 unless end_tag
    @level -= 1 if end_tag && @level > 0
    @xml += "\n" + '  ' * @level
  end

end