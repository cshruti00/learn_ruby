class TestCode

    def fibonacci(num)
      @a = 0
      @b = 1
      if num<0 || (num).to_s.include?('.')
        return nil
      elsif num==1
        return @a
      elsif num==2
        return @b
      end
      for i in 1..(num-2)
        @sum = @a + @b
        @a = @b
        @b = @sum
      end
      return @b
    end

    def readBinary(num)
      return (num.to_s).to_i 2
    end

    def readOctal(octet)
      return (octet.to_s).to_i 8
    end

    def reverseText(text)
      return text.reverse
    end

end
