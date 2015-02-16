def bubble_sort(array)
  return array if array.size <= 1
  swapped = false

  0.upto(array.size - 2) do |i|
    next unless array[i] > array[i + 1]
    array[i], array[i + 1] = array[i + 1], array[i]
    swapped = true
  end

  return array unless swapped
  bubble_sort(array)
end
