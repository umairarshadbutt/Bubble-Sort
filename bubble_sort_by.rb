def bubble_sort_by(array)
  puts "Unsorted array : #{array}"
  (0..array.length - 1).each do
    (0..array.length - 2).each do |index|
      next unless yield(array[index], array[index + 1]).positive?

      array[index], array[index + 1] = array[index + 1], array[index]
    end
  end
  print "Sorted array : #{array}"
end
string_array = %w[hi hello hey]
result = bubble_sort_by(string_array) do |left, right|
  left.length - right.length
end
result
