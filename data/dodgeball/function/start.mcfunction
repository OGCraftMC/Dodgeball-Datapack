# Tags and TPS the teams
schedule function dodgeball:teams 1s

# Starts loops
schedule function dodgeball:spawn_dodgeballs 2s
schedule function dodgeball:dodgeball_mechanics 1s
schedule function dodgeball:eliminated_player 1s
schedule function dodgeball:winning_team 1s

# Clears everyones inventory to prevent extra snowballs being brought in from previous games
clear @a
kill @e[type=item]

execute if entity @e[tag=Dodgeball_Debug_Mode] run say start triggered