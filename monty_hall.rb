def monty_hall
  number = rand(3)
  door_arr = ["goat", "goat"]
  door_arr[number] = "car"
  if number == 0 || number == 1
    door_arr.push("goat")
  end
  puts "Which door has the car? 1, 2, or 3?"
  response = gets.chomp
  while response != "1" && response != "2" && response != "3"
    puts "That is not a valid response"
    response = gets.chomp
  end
  host_pick = rand(3)
  while door_arr[host_pick] == "car" || host_pick == response.to_i - 1
    host_pick = rand(3)
  end
  puts "Let's check door number #{(host_pick + 1)}"
  puts door_arr[host_pick]
  puts "Would you like to change your mind?"
  choice = gets.chomp
  if choice == "yes"
    door_arr.delete_at(host_pick)
    door_arr.delete_at(response.to_i - 1)
    puts door_arr[0]
  elsif choice == "no"
    puts door_arr[response.to_i - 1]
  end
end

monty_hall