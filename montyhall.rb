#http://www.youtube.com/watch?v=9vRUxbzJZ9Y
simTimes = ARGV[0].to_i
doors = [false,false,false]

def montyHall(n)
    t1=0;t2=0
    n.times do
        doors = [false,false,false]
        carPos = rand(3)
        doors[carPos] = true

        choice = rand(3)

        shownDoor = choice
        shownDoor = rand(3) until (shownDoor != choice && !doors[shownDoor]) 


        if (doors[choice] ? true : false) then t1+=1 end
        if (doors[3-choice-shownDoor] ? true : false) then t2+=1 end
    end
    puts "Tactic 1: #{(t1.to_f*100/n).round(2)}% winning chance"
    puts "Tactic 2: #{(t2.to_f*100/n).round(2)}% winning chance"
end

montyHall(simTimes)