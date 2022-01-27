def morse_decode_char(char)
  morse_chars = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_chars.each do |key, value|
    return value if key == char
  end
end


morse_dict.key(morse_char) || ' '
end

def morse_decode_word(morse_word)
  word = ''
  morse_word.split.each do |char|
    word += morse_decode_char(char)
  end
  word
end

def morse_decode_sentence(morse_msg)
  msg = []
  morse_msg.split('   ').each do |word|
    msg.push(morse_decode_word(word))
  end
  msg.join(' ')
end

puts "Your decoded message is: #{decode_msg(morse_str)}"

puts morse_decode_char('.-')
puts morse_decode_word('-- -.--')
puts morse_decode_sentence('-- -.--   -. .- -- .')
puts morse_decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
