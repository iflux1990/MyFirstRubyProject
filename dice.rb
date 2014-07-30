# Terning statistik

class Die
    def roll
        1+rand(6)
    end
end

def record_rolls(rolls)
    a_die = Die.new
    rtrn_array = []

    rolls.times {
        rtrn_array << a_die.roll
    }

    rtrn_array
end

def compute_percent (rolls_array)
    tally = Hash.new(0)
    total_rolls = rolls_array.count
    percent_array = []

    rolls_array.each{|roll|
        tally[roll] += 1
    }

    i = 1
    while i < 7
        percent_array << sprintf("%.2f",((tally[i].to_f/total_rolls.to_f) * 100.0)).rjust(6)
        i+=1
    end

    percent_array

end

puts
puts "# of Rolls 1s       2s       3s       4s       5s       6s"
puts "=============================================================="

i=1
while i < 7
    print "#{10**i}".ljust(10) 
    print compute_percent(record_rolls(10**i)).join("%  ") + "%\n"
    i+=1
end 