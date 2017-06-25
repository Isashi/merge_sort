def merge_sort(array)
	n = array.length
	c = Array.new
	return array[0] if n<2
		a = array[0..((n/2)-1)]
		b = array[(n/2)..(n-1)]
		puts "a: #{a}"
		puts "b: #{b}"
		merge_sort(a)
		merge_sort(b)
		puts "a: #{a}"
		puts "b: #{b}"
		ia = ib = ic = 0
		maxa = a.length
		maxb = b.length
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
		if ia == maxa then
			c << b[ib..-1]
		else
			c << a[ia..-1]
		end

		puts "a: #{a}"
		puts "b: #{b}"
		puts "c: #{c}"

end

merge_sort([2, 3, 3, 1])
