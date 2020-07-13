
number_array = [2,100,2,887,7,88,3,22,333,33333,12111,33434,546576576,6788799,4564534]
def bubble_sort(array)
     puts "Unsorted array : #{array}" 
    (0..array.length - 1).each do 
        (0..array.length - 2).each do |index|
            if (array[index] <=> array[index+1]).positive?
                array[index], array[index+1] =array[index+1], array[index]
            end
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
string_array=["hi","hello","hey"]
bubble_sort(number_array)
result = bubble_sort_by(string_array) do |left,right|
    left.length - right.length
 end
 result