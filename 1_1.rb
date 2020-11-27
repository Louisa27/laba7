# frozen_string_literal: true

# graciously
def max_a
  words = File.open('./F.txt').read.split.select { |m| m.start_with?('a') }
  if words.empty?
    word = 'No words found'
  else
    len_max = words.max_by(&:length).length
    word = words.select { |m| m.length == len_max }.last
  end
  word
end
