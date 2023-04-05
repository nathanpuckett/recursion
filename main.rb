# frozen_string_literal: true

# Fibonacci
def fibs(num, res = [])
  (0...num).each do |i|
    case i
    when 0
      res << 0
    when 1
      res << 1
    else
      res << res[-1] + res[-2]
    end
  end
  res
end

p fibs(8)

def fibs_rec(num)
  res = []
  (1..num).each do |i|
    res << fibs_digit(i)
  end
  res
end

def fibs_digit(num)
  return 0 if num == 1
  return 1 if num == 2

  fibs_digit(num - 1) + fibs_digit(num - 2)
end

p fibs_rec(8)
