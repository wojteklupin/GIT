# master
class InsertionSort
 
def sort(arr)
size = arr.length
for i in 1...size
for j in i.downto(1)
if (arr[j] < arr[j-1])
exchange(arr, j, j-1)  # jesli element poprzedzajacy jest wiekszy zamien miejscami
else
break;                 # jesli element poprzedzajacy jest nie wiekszy to element jest juz na miejscu, przejdz do wstawiania kolejnego
end
end  
end
end
 
# Sprawdza czy tablica zostala posortowana
def is_sorted(arr)
for i in 1...arr.length
return false if less(arr[i], arr[i-1])
 
return true
end
end
 
# Wypisuje wszystkie elementy tablicy
def print_elements(arr)
arr.each {|it| print it, " " unless it.nil?}
print "\n"
end
 
private
# Zamienia dwa elementy tablicy o indeksach i, j w tablicy arr
def exchange(arr, i, j)
arr[i], arr[j] = arr[j], arr[i]
end
 
# Sprawdza czy lewy operand jest mniejszy od prawego
def less(lhs, rhs)
return lhs < rhs
end
 
end
 
arr = [4, -6, 8, 90, -67]
sorting = InsertionSort.new
sorting.sort(arr)
puts "Nieposortowana!" unless sorting.is_sorted(arr)
sorting.print_elements(arr)