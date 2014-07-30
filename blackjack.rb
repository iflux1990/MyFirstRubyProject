#Casinoer spiller ofte med blackjack med flere sæt spillekort.
#Giver det huset en fordel?
#dette lille script beregner chancen for at få Blackjack med et givet antal sæt spillekort.

n = ARGV[0].to_i
bjCount = 0
cards = ([11,2,3,4,5,6,7,8,10,10,10,10]*4*n).shuffle
handsCount = cards.count/2
cards.each_slice(2) { |pair|
    if pair.reduce(:+) == 21
        bjCount+=1
    end
}
puts "Efter #{handsCount} hænder, var der #{bjCount} blackjacks med #{((bjCount.fdiv(handsCount))*100).round(1)}% chance."