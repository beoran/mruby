##
# IO
#


# ISO 15.2.34
class IOError < StandardError
end

# ISO 15.2.35
class EOFError < IOError
end

# ISO 15.2.36
class SystemCallError < StandardError
end


# ISO 15.3.1
class IO
  def self.open(*args, &block) 
    i = self.new(*args)
    return i unless (block)
    begin 
    v = block.call(i)
    rescue Exception => ex
    ensure
      i.close
    end
    return v
  end
  
  
  
  
end


