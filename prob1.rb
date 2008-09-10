
def mult_of_three(max)

threes= []

number=0
        while number + 3 < max
                number+=3
                threes.push(number)
        end
return threes
end

def mult_of_five(max)
fives= []
number=0

        while number +5< max
                number+=5
                fives.push(number)
                
        end

return fives
end

def sum(first, second)
        x= first  +  second
        all= x.inject(0) do
          |cumulative,element| cumulative + element
        end
        return all
end

puts sum(mult_of_three(1000), mult_of_five(1000))