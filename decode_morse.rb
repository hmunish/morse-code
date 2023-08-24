def decode_word(word)
  codes = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q',
    '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W',
    '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6',
    '--...' => '7', '---..' => '8',
    '----.' => '9', '-----' => '0'
  }
  result = ''
  character = word.split
  character.each do |c|
    result += codes[c]
  end
  result
end

def decode_message(message)
  result = ''
  words = message.split('   ')
  words.each do |w|
    result += "#{decode_word(w)} "
  end
  result
end
print decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
