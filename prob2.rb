#Problem 2


def fibSum(n)
  v1, v2, x =1 ,1, 0
  c=[]
  while v2 < n
  v1, v2 = v2, v1 + v2
  c.push(v2)
    if v2 % 2==0 && v2 < n
      x+=v2
    end
  end
  return x
end

puts fibSum(4000000)