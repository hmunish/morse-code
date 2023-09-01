require 'pry'
def decode_char(charac)
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
  codes[charac]
end
def decode_word(word)
  character = word.split
  result = ''
  character.each do |c|
    result += decode_char(c)
  end
  result
end

def decode(message)
  result = ''
  words = message.split('   ')
  words.each do |w|
    result += "#{decode_word(w)} "
  end
  result
end
print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
