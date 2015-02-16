def bubble_sort(array)
  return array if array.size <= 1

  loop do
    swapped = false

    0.upto(array.size - 2) do |i|
      j = i + 1
      next unless array[i] > array[j]
      array[i], array[j] = array[j], array[i]
      swapped = true
    end

    break unless swapped
  end

  array
end
