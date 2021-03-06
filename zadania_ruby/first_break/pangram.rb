POLISH_ALPHABET = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "w", "y", "z", "ó", "ą", "ć", "ę", "ł", "ń", "ś", "ź", "ż"]
PUNCTUACTION_MARKS = ['.', ',', ':', ';', ' ', '!', '?']

def pangram?(sentence)
  sentence_array = []
  sentence.downcase!.each_char do |chr|
    sentence_array << chr unless sentence_array.include?(chr)
  end

  sentence_array.reject! { |elem| PUNCTUACTION_MARKS.include?(elem)}
  sorted = sentence_array.sort

  if sorted == POLISH_ALPHABET
    'true'
  else
    'false'
  end
end

puts pangram?('Dość błazeństw, żrą mój pęk luźnych fig')
puts pangram?('Losowy ciąg znaków')
puts pangram?('Pójdźże, kiń tę chmurność w głąb flaszy!')
