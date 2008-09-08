#~ # Problem 5

#~ def smallestDivisible(n)

  
#~ i=0
#~ q=[]
#~ while i< primesBelow(n).length
 #~ j=2
 #~ if primesBelow(n)[i]**2 > n
   #~ break
  #~ else
  #~ while primesBelow(n)[i]**j < n
    #~ q.push(primesBelow(n)[i]**j )
    #~ j+=1
  #~ end
  #~ end
  #~ i+=1
#~ end

#~ def fact(n)
  #~ if n == 0
    #~ 1
  #~ else
    #~ n * fact(n-1)
  #~ end
#~ end

#~ test= primesBelow(n).inject(1){ |s,v| s*v}


#~ while test< fact(n)
#~ x=1
#~ y=0
  #~ while x<=n
    #~ if test % x ==0
      #~ x+=1
      #~ y+=1
    #~ else
      #~ break
    #~ end
    #~ if y==n
      #~ return test
    #~ else 
      #~ test++
    #~ end
  #~ end
#~ end


#~ total=primesBelow(n)+q
#~ total = total.uniq

#~ answer= total.inject(1){ |s,v| s*v}



#~ end
#~ puts smallestDivisible(10)


def smallestDivisible(n)


def isNewPrime?(value, array)
  y=0
    array.each do |div| 
        if value % div ==0
        y+=1
      end
    end
      if y>0
        return false
      else 
        return true
      end
  end
  
  
  def primesBelow(c)
    x=2
    a=[]
    while x <= c
      if (isNewPrime?(x, a))
      a.push(x)
      end
    x+=1
    end
return a
end

def primeFactor(n)
  m=2
 c=[]
 primesBelow(n).each{ |x| c.push(x) if n==x} 
 if n%2==0 
   c.push(2)
  end
  while m < (Math.sqrt(n))
    if n % m ==0 
      
    c.push(primeFactor(n/m))
    end
    m+=1
  end
  return c.flatten.uniq
end

x=2
alpha=[]
while x< n


alpha.push(primeFactor(x))

x+=1
end


total= alpha.flatten.uniq




answer= total.inject(1){ |s,v| s*v}

end

puts smallestDivisible(20)