# Ruby/JRuby LZMA
# This code, like the LZMA SDK, is public domain.

require 'java'
require 'lzma_java.jar'

class LZMA
  def initialize
    @lzma = com.ephemeronindustries.lzma.LZMA.new
  end
  
  def compress(data)
    String.from_java_bytes @lzma.compress(data.to_java_bytes)
  end
  
  def decompress(data)
    String.from_java_bytes @lzma.decompress(data.to_java_bytes)
  end
end