def quicksort(array)
  return array if array.size <= 1
  pivot = array.delete_at(array.index(array.sample))
  less, greater = array.partition { |element| element <= pivot }
  [*quicksort(less), pivot, *quicksort(greater)]
end
