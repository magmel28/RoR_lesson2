arr = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]

#узнать количество элементов в массиве
puts arr.length
puts

#перевернуть массив
print arr.reverse
puts
puts

#найти наибольшее число
puts arr.max
puts

#найти наименьшее число
puts arr.min
puts

#отсортировать от меньшего к большему
print arr.sort
puts
puts

#отсортировать от большего к меньшему
print arr.sort {|x, y| y <=> x}
puts
puts

#удалить все нечетные числа
delArr = arr.dup
print delArr.delete_if {|x| x % 2 != 0}
puts
puts

#оставить только те числа, которые без остатка делятся на 3
print arr.select {|x| x % 3 != 0}
puts
puts

#удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)
print arr.uniq
puts
puts

#разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого
print arr.map{|x| x / 10.0}	
puts
puts

#получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве
alph = []
alph[1..26] = ('a'..'z').to_a
newArr = []
arr.each do |x|
	if x < alph.length
		newArr.push(x)
	end
end
print newArr
puts
puts

#поменять местами минимальный и максимальный элементы массива
maxidx = arr.index(arr.max)
minidx = arr.index(arr.min)
swapArr = arr.dup
swapArr[maxidx], swapArr[minidx] = swapArr[minidx], swapArr[maxidx]
print swapArr
puts
puts

#найти элементы, которые находятся перед минимальным числом в массиве
minidx = arr.index(arr.min)
minidx.times do |x|
	print arr[x].to_s + ' '
end
puts
puts

#необходимо найти три наименьших элемента
print arr.sort.first(3)
puts
puts