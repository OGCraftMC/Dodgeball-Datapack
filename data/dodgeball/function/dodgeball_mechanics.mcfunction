# Tags the Red Dodgeballs after thrown
execute as @a[tag=RedTeam] run execute at @s run tag @e[type=minecraft:snowball,distance=..2,tag=!RedTeamDodgeball,tag=!BlueTeamDodgeball] add RedTeamDodgeball

# If a Red Player gets hit
execute if entity @e[tag=Dodgeball_Debug_Mode] run execute as @e[tag=RedTeam] run execute at @s run execute positioned ~ ~0.7 ~ run execute if entity @e[tag=BlueTeamDodgeball,distance=..2] run say Red player hit
execute as @e[tag=RedTeam] run execute at @s run execute positioned ~ ~0.7 ~ run execute if entity @e[tag=BlueTeamDodgeball,distance=..2] run execute at @e[tag=SpectatorSpawn] run teleport @s ~ ~ ~

# Tags the Blue Dodgeballs after thrown
execute as @a[tag=BlueTeam] run execute at @s run tag @e[type=minecraft:snowball,distance=..2,tag=!RedTeamDodgeball,tag=!BlueTeamDodgeball] add BlueTeamDodgeball

# If a Blue Player gets hit
execute if entity @e[tag=Dodgeball_Debug_Mode] run execute as @e[tag=BlueTeam] run execute at @s run execute positioned ~ ~0.7 ~ run execute if entity @e[tag=RedTeamDodgeball,distance=..2] run say Blue player hit
execute as @e[tag=BlueTeam] run execute at @s run execute positioned ~ ~0.7 ~ run execute if entity @e[tag=RedTeamDodgeball,distance=..2] run execute at @e[tag=SpectatorSpawn] run teleport @s ~ ~ ~

# Loops this function
execute if entity @e[tag=RedTeam] run execute if entity @e[tag=BlueTeam] run schedule function dodgeball:dodgeball_mechanics 1t


