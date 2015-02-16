def bubble_sort(array)
  return array if array.size <= 1
  swapped = false

  0.upto(array.size - 2) do |i|
    j = i + 1
    next unless array[i] > array[j]
    array[i], array[j] = array[j], array[i]
    swapped = true
  end

  return array unless swapped
  bubble_sort(array)
end
