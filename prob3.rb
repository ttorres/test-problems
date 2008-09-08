# Problem 3
def largestPrimeFactor(n)
  m=2
 c=[]
 
  while m < (Math.sqrt(n))
    if n % m ==0 && n % 2 != 0
      
    c.push(largestPrimeFactor(n/m))
    end
    m+=1
  end
  if c.max==nil
    if n%2==0
      return 2
    end
    return n
      else
    return c.max
  end
end
    
    
puts largestPrimeFactor(600851475143)   
    
    
    
    
    