def roman_to_int(str)
  rom_hash = {
    "I" => 1,
    "V" => 5,
    "X" => 10
  }

  sum = 0
  str[0..-2].each_char.with_index do |c, i|
    if rom_hash[c] < rom_hash[str[i + 1]]
      sum -= rom_hash[c]
    else
      sum += rom_hash[c]
    end
  end
  return sum + rom_hash[str[-1]]
end

p roman_to_int("IV")
p roman_to_int("VIII")
p roman_to_int("XIV")
p roman_to_int("VI")
