def merge_sort(array)
	#puts array.count
	return array if array.count==1
		a = array[0,array.count/2]
		b = array[array.count/2,array.count]
		#print "merge sort a: #{a}"
		#puts
		#print "merge sort b: #{b}"
		#puts
		a = merge_sort(a)
		b = merge_sort(b)
		merge(a,b)
end

def merge (a, b)
	c = Array.new
	ia = ib = ic = 0
	#puts "a: #{a}"
	#puts "a class: #{a.class}"

	#puts "b: #{b}"
	#puts "b class: #{b.class}"
	maxa = a.length
	maxb = b.length
	#	puts "PRE MERGE"
	#puts "a: #{a}"
	#puts "ia: #{ia}"
	#puts "a[ia]: #{a[ia]}"
	#puts "a[ia]: #{a[ia].class}"
	#puts "maxa: #{maxa}"
	#puts "b: #{b}"
	#puts "ib: #{ib}"
	#puts "b[ib]: #{b[ib]}"
	#puts "b[ib]: #{b[ib].class}"
	#puts "maxb: #{maxb}"
	#puts "ic: #{ic}"
	#puts "c[ic]: #{c[ic]}"
	while ia < maxa && ib < maxb
		if a[ia] < b[ib] then
			c[ic] = a[ia]
			ia += 1
		else
			c[ic] = b[ib]
			ib += 1
		end
		ic += 1
	end
	#	puts "MIDDLE MERGE"
	#puts "a: #{a}"
	#puts "ia: #{ia}"
	#puts "a[ia]: #{a[ia]}"
	#puts "a[ia]: #{a[ia].class}"
	#puts "maxa: #{maxa}"
	#puts "b: #{b}"
	#puts "ib: #{ib}"
	#puts "b[ib]: #{b[ib]}"
	#puts "b[ib]: #{b[ib].class}"
	#puts "maxb: #{maxb}"
	#puts "ic: #{ic}"
	#puts "c[ic]: #{c[ic]}"
	#	puts "c: #{c}"
	if ia == maxa then
		until ib == maxb
		  btemp = b[ib]
		  c << btemp
		  ib += 1
	#		puts "ORCA"
	#puts "a: #{a}"
	#puts "ia: #{ia}"
	#puts "a[ia]: #{a[ia]}"
	#puts "a[ia]: #{a[ia].class}"
	#puts "maxa: #{maxa}"
	#puts "b: #{b}"
	#puts "ib: #{ib}"
	#puts "b[ib]: #{b[ib]}"
	#puts "b[ib]: #{b[ib].class}"
	#puts "maxb: #{maxb}"
	#puts "ic: #{ic}"
	#puts "c[ic]: #{c[ic]}"
#		puts "c: #{c}"
		end
	else
		until ia == maxa
			atemp = a[ia]
		  c << atemp
		  ia += 1
		end
	end
	#	puts "POST MERGE"
	#puts "a: #{a}"
	#puts "ia: #{ia}"
	#puts "a[ia]: #{a[ia]}"
	#puts "a[ia]: #{a[ia].class}"
	#puts "maxa: #{maxa}"
	#puts "b: #{b}"
	#puts "ib: #{ib}"
	#puts "b[ib]: #{b[ib]}"
	#puts "b[ib]: #{b[ib].class}"
	#puts "maxb: #{maxb}"
	#puts "ic: #{ic}"
	#puts "c[ic]: #{c[ic]}"
	#	puts "c: #{c}"
	#print c
	#puts
	return c
end

print merge_sort([2, 1, 4, 5, 3])
puts
print merge_sort([4, 19, 23, 56, 39, 54])
puts
print merge_sort([2])
puts
print merge_sort([1, 2, 3, 0])
puts
