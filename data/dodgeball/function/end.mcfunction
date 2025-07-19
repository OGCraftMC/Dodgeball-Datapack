# TPs everyone out
execute as @e[tag=SpectatorHub] run teleport @e[type=minecraft:player] @s

# Clean up
clear @a
kill @e[type=item]
tag @e remove BlueTeamTitleTag
tag @e remove RedTeamTitleTag

# Stops loops
schedule clear dodgeball:dodgeball_mechanics
schedule clear dodgeball:eliminated_player
schedule clear dodgeball:spawn_dodgeballs
schedule clear dodgeball:winning_team
schedule clear dodgeball:end

execute if entity @e[tag=Dodgeball_Debug_Mode] run say end triggered
