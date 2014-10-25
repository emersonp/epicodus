def calc_word(phrase)
  question_arr = phrase.split("?")
  phrase_arr = phrase.split(" ")
  first_num = 0
  second_num = 0
  third_num = 0
  total_num = 0
  first_operand = ""
  second_operand = ""

  phrase_arr.each do |index|
    if index[0] == index[0].to_i.to_s
      if first_num == 0
        first_num = index.to_i
      elsif second_num == 0
        second_num = index.to_i
      else
        third_num = index.to_i
      end
    else
      if first_operand == ""
        case index
        when "plus"
          first_operand = "plus"
        when "minus"
          first_operand = "minus"
        when "times"
          first_operand = "times"
        when "divided"
          first_operand = "divided"
        when "power"
          first_operand = "power"
        end
      else
        case index
        when "plus"
          second_operand = "plus"
        when "minus"
          second_operand = "minus"
        when "times"
          second_operand = "times"
        when "divided"
          second_operand = "divided"
        when "power"
          second_operand = "power"
        end
      end
    end
  end

  puts "First number: " + first_num.to_s
  puts "Second number: " + second_num.to_s
  puts "First Operand: " + first_operand
  puts "Second Operand: " + second_operand

  case first_operand
  when "plus"
    total_num = first_num + second_num
  when "minus"
    total_num = first_num - second_num
  when "times"
    total_num = first_num * second_num
  when "divided"
    total_num = first_num.to_f / second_num.to_f
    if total_num % 1.0 == 0 then total_num = total_num.to_i end
  when "power"
    total_num = first_num**second_num
  end

  case second_operand
  when "plus"
    total_num += third_num
  when "minus"
    total_num -= third_num
  when "times"
    total_num *= third_num
  when "divided"
    total_num /= third_num.to_f
    if total_num % 1.0 == 0 then total_num = total_num.to_i end
  when "power"
    total_num **= third_num
  end


  return total_num
end
