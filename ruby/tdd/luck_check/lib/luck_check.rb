def luck_check(original_string)
  string_num = original_string.to_i
  string = string_num.to_s

  print string + "/" + string_num.to_s
  puts

  if string.length % 2 != 0
    return false
  end

  num_digits = string.length / 2
  first_num = string[0..(num_digits-1)]
  print "First Num: "
  puts first_num
  second_num = string[num_digits..-1]
  print "First Num: "
  puts second_num

  first_arr = first_num.to_s.split("")
  second_arr = second_num.to_s.split("")

  first_total = 0
  second_total = 0

  first_arr.each do |number|
    first_total += number.to_i
  end
  second_arr.each do |number|
    second_total += number.to_i
  end

  if first_total == second_total
    return true
  else
    return false
  end
end
