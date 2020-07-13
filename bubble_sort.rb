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

bubble_sort(number_array)
