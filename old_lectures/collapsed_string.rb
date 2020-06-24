def same_char_collapse(str)
  collapsed = true

  while collapsed
    collapsed = false
  	i = 0
    while i < str.length
      if str[i] == str[i + 1]
        collapsed = true
        str = str[0...i] + str[i + 2..-1]
      end
      i += 1
    end
  end
  return str
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv