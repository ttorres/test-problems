#Problem 4

def largestPalindrome(digits)
  seq=(10**(digits))-1
    def isPalindrome?(number)
      number= String(number)
      length= number.length
      first, last = 0, length -1
        while first<=last
          if (number[first] != number[last])
            return false
          end
        first +=1
        last -=1
        end
      return true
    end
      
  while seq> 0
  seq2=seq
    while seq2>0
      x=seq*seq2
      if isPalindrome?(x)
        return x
        break
      end
    seq2-=1
    end 
    seq-=1
  end
  
end

puts largestPalindrome(3)