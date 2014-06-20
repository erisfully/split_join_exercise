require_relative "testing_library"

goal_message = "GOOOOOOOAL!!!!"
team_list = "Brazil, Mexico, Cameroon, Croatia, Netherlands, Chile, Australia, Spain, Germany, Ghana, US, Protugal"
long_string = <<-world_cup_news
  Clint, Dempsey, put, the, U.S.,
  ahead, in, the, first, minute,
  of, its, World, Cup, opener.
world_cup_news

# enter your solutions inside the methods
def goal(goal_message)
  goal_message * 2
end

def generate_an_array_of_teams(team_list)
  team_array = team_list.split(', ')
  team_array
end

def number_of_teams(team_list)
  team_array = team_list.split(', ')
  team_array.length
end

def return_australia(team_list)
  names = team_list.split(', ')
  names[6]

end

def starts_with_C(team_list)
  team_C = []
  team_array = team_list.split(', ')
  team_array.each {|team_array| if team_array.include?'C'
                               team_C.push(team_array)
                                end}
  team_C
end

def block_string_to_single_line(long_string)
  long_array = long_string.split('.,')
  long_array
  puts long_array

end

def capitalize_every_third_word(block_string)

end

check("goal method", goal(goal_message) == "GOOOOOOOAL!!!!GOOOOOOOAL!!!!")
check("generate_an_array_of_teams method",
      generate_an_array_of_teams(team_list) == ["Brazil", "Mexico", "Cameroon", "Croatia", "Netherlands", "Chile", "Australia", "Spain", "Germany", "Ghana", "US", "Protugal"] )
check("number_of_teams method", number_of_teams(team_list) == 12 )
check("return_australia method", return_australia(team_list) == 'Australia' )
check("starts_with_C method", starts_with_C(team_list) == ['Cameroon', 'Croatia', 'Chile'] )
check("block_string_to_single_line method",
      block_string_to_single_line(long_string) == "Clint Dempsey put the U.S. ahead in the first minute of its World Cup opener." )
check("capitalize_every_third_word method",
      capitalize_every_third_word(long_string) == "Clint dempsey put The u.s. ahead In the first Minute of its World cup opener." )

