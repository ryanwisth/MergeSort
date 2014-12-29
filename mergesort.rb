#!/usr/bin/env ruby
a = [66,4,333,3,700,3,6,7,33,11,33, 44]
count = 0
a = a.each_slice(1).to_a
while count < a.length
	if a[count+1] == nil
elsif a[count][0] > a[count+1][0]
	a.insert(count, a[count+1][0])
	a.insert(count+1, a[count+2][0])
	a.delete_at(count+1)
	a.delete_at(count+2)
else
	
end
count+=2
end
b = Array.new
a = a.flatten
a = a.each_slice(2).to_a
count = 0
count1 = 0
x = a[count].length*2
while count < a.length
	while count1 < x 
	if a[count+1] == nil
		b.push(a[count])
		a.delete_at(count)
	elsif a[count][0] == nil
		b.push(a[count+1])
		a.delete_at(count+1)
	elsif a[count+1][0] == nil
		b.push(a[count])
		a.delete_at(count)
	elsif a[count][0] <a[count+1][0]
		b.push(a[count][0])
		a[count].delete_at(0)
	else
		b.push(a[count+1][0])
		a[count+1].delete_at(0)
	end
	count1 +=1
end
	count+=1
	count1 = 0
end
b.delete(nil)





b = b.flatten
b = b.each_slice(4).to_a
count = 0
count1 = 0
x = b[0].length * 2
y = b.length - 1
c = Array.new
while count < y
	while count1 < x
	if b[count][0] == nil
		c.push(b[count+1][0])
		b[count+1].delete_at(0)
	elsif b[count+1][0] == nil
		c.push(b[count][0])
		b[count].delete_at(0)


	elsif b[count][0] == b[count+1][0]
		c.push(b[count][0])
		c.push(b[count+1][0])
		b[count].delete_at(0)
		b[count+1].delete_at(0)
	elsif b[count][0] < b[count+1][0]
		c.push(b[count][0])
		b[count].delete_at(0)
	elsif b[count][0] > b[count+1][0]
		c.push(b[count+1][0])
		b[count+1].delete_at(0)
		

	end
		count1 +=1
	end
	count+=1
	count1=0
end
c.delete(nil)


c = c.flatten
c = c.each_slice(8).to_a
d = Array.new
count = 0
count1 = 0
x = c.length 
y = c[0].length * 2
while count < x
	while count1 < y
if c[count] == nil
elsif c[count][0] == nil
 	d.push(c[count+1])
 	c.delete_at(count+1)
 	puts "no"
 elsif c[count+1][0] == nil
 	d.push(c[count])
 	c.delete_at(count)
 	puts "yes"
 	
	elsif c[count][0] == c[count+1][0]
		d.push(c[count][0])
		d.push(c[count+1][0])
		c[count].delete_at(0)
		c[count+1].delete_at(0)
		puts d
	elsif c[count][0] < c[count+1][0]
		d.push(c[count][0])
		c[count].delete_at(0)
	elsif c[count][0] > c[count+1][0]
		d.push(c[count+1][0])
		c[count+1].delete_at(0)

	end
	count1 +=1
end
	count+=1
	count1=0

end
puts d