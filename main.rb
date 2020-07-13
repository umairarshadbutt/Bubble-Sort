number_array = [2, 100, 2, 887, 7, 88, 3, 22, 333, 33_333, 12_111, 33_434, 546_576_576, 6_788_799, 4_564_534]
def bubble_sort(array)
  puts "Unsorted array : #{array}"
  (0..array.length - 1).each do
    (0..array.length - 2).each do |index|
      array[index], array[index + 1] = array[index + 1], array[index] if (array[index] <=> array[index + 1]).positive?
    end
  end
  puts "Sorted array : #{array}"
end
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
bubble_sort(number_array)
result = bubble_sort_by(string_array) do |left, right|
  left.length - right.length
end
result
