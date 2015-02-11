require 'pry'

def bubble_sort(arr)
binding.pry
  arr.length.times do
    arr.each_with_index do |item, index|
      next_item = arr[index+1]
      if next_item < item
        temp = item
        item = next_item
        next_item  = temp
        # because a,b = b,a doesn't work
        end
    end
  end
end


=begin
 For each element in the list look at the next element.
 If it's a lower value, swap them around
 Continue until it is ordered

Notes: Idiomatic switch below doesn't work. Next val gets nil.. Why?
      next_item, value = value, next_value if next_item < item

=end
