#this is a fractions program that will add, subtract, mutiply, divide, and reduce fractions.  It might also turn a fraction into a decimal


require 'rational'
#above require allows you to access to two methods
#lcm and gcd
#use like this 12.gcd(4) pr 12.lcm(3)
#Methods Definition Section
#*******************************************************************


#All methods should call reduce when finished before reporting answer
def add_frac(a,b)
	denom = a[1].lcm(b[1])
        num = a[0] + b[0]	
	#print_frac(num,denom)
        reduce_frac(num,denom)
end


def mult_frac(a,b)	
	num = a[0] * b[0]
	denom = a[1] * b[1]
	reduce_frac(num,denom)
end


def sub_frac(a,b)
	denom = a[1].gcd(b[1])
	num = a[0] - b[0]
	reduce_frac(num,denom)
end


def div_frac(a,b)
	num = a[1]
	denom = a[0]
	num1 = b[1]
	denom1 = b[0]
	denom = num * num1
	num = denom * denom1
	reduce_frac(num,denom)
end


def reduce_frac(a,b)
	redux = a.gcd(b)
	num = a / redux
	denom = b / redux
	print_frac(num,denom) 
end


def to_decimal(a,b)
	fraction1 = a[0]/a[1].to_f
	fraction2 = b[0]/b[1].to_f
	puts "The first fraction is " + fraction1.round(2).to_s
	puts "The second fraction is " + fraction2.round(2).to_s

end


def invert_frac(a,b) 
denom = a[0]
num = a[1] 
print_frac(num,denom)
denom = b[0]
num = b[1]
print_frac(num,denom)

end

def print_frac(a,b)
	puts "One of your fractions is..."
	puts "  " + a.to_s + "  "
	puts "------"
	puts "  " + b.to_s + "  "

end

def reduce2(a,b)
        redux = a[0].gcd(a[1])
        num = a[0] / redux
        denom = a[1] / redux
        print_frac(num,denom)
        redux1 = b[0].gcd(b[1])
        num1 = b[0] / redux1
        denom1 = b[1] / redux1
        print_frac(num1,denom1)
end
#*******************************************************************
system 'clear'
puts "Welcome to my fraction calculator.  Enter two fractions like this, one whole fraction at a time, pressing enter between the fractions.  For example you would type a/b Enter, then c/d Enter."

frac1 = gets.chomp
frac2 = gets.chomp

frac1 = frac1.split("/")
frac2 = frac2.split("/")

frac1.collect! {|x| x.to_i}
frac2.collect! {|x| x.to_i}

puts "Would you like to add(1), subtract(2), mutiply(3), divide(4), reduce(5),  invert(6) or turn to decimal(7) your fractions?  Enter the number of your choice."

choice = gets.to_i

case choice
	when 1	
		add_frac(frac1,frac2)
	when 2
		sub_frac(frac1,frac2)
	when 3
		mult_frac(frac1,frac2)
	when 4
		div_frac(frac1,frac2)
	when 5
		reduce2(frac1,frac2)
	when 6
		invert_frac(frac1,frac2)
	when 7
		to_decimal(frac1,frac2)
end




#Procedural section of code
#*****************************************************************
