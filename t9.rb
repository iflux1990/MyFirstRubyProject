dict = File.read('appdata/brit-a-z.txt').downcase.split("\n")
letters_hash = {
    '2' => 'abc',
    '3' => 'def',
    '4' => 'ghi',
    '5' => 'jkl',
    '6' => 'mno',
    '7' => 'pqrs',
    '8' => 'tuv',
    '9' => 'wxyz' }

input = '7777 666 555 3'
translation = input.split(' ').map { |x| letters_hash[x[0]][x.length - 1] }.join
puts dict.select {|x| x =~ /\A#{translation}/ }

puts '-----------------'

#extra credit
input = '7 6 5 3'
translation = input.split(' ').map { |x| "[#{letters_hash[x]}]" }.join
puts dict.select {|x| x =~ /\A#{translation}/ }