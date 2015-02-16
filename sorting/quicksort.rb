def quicksort(array)
  return array if array.size <= 1

  pivot = array.sample
  array.delete_at(array.index(pivot))
  less = []
  greather = []
  array.each do |element|
    if element <= pivot
      less << element
    else
      greather << element
    end
  end

  sorted_array = []
  sorted_array << *quicksort(less)
  sorted_array << pivot
  sorted_array << *quicksort(greather)
  sorted_array
end
