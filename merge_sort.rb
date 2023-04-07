# frozen_string_literal: true

def rand_arr
  arr_size = rand(2..10)
  arr_size.times.map { rand(100) }
end

# rubocop:disable Metrics

def merge_sort(arr)
  return arr if arr.length < 2

  a = arr[0...arr.length / 2]
  b = arr[arr.length / 2..]

  a = merge_sort(a)
  b = merge_sort(b)

  c = []

  until a.empty? || b.empty?
    if a[0] < b[0]
      c << a[0]
      a.shift
    else
      c << b[0]
      b.shift
    end
  end

  if a.empty?
    b.each { |x| c << x }
  else
    a.each { |x| c << x }
  end

  c
end

# rubocop:enable Metrics

p merge_sort(rand_arr)
