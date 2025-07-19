#Add players to red or blue team
execute at @e[type=armor_stand,tag=BlueTeamHub] run tag @e[tag=!BlueTeamHub,distance=..2] add BlueTeam
execute at @e[type=armor_stand,tag=BlueTeamHub] run tag @e[tag=!BlueTeamHub,distance=..2] add BlueTeamTitleTag
execute at @e[type=armor_stand,tag=RedTeamHub] run tag @e[tag=!RedTeamHub,distance=..2] add RedTeam
execute at @e[type=armor_stand,tag=RedTeamHub] run tag @e[tag=!RedTeamHub,distance=..2] add RedTeamTitleTag

execute at @e[type=armor_stand,tag=SpectatorHub] run tag @e[tag=!SpectatorHub,distance=..2] add Spectator

#TP players to team spawn
tp @e[tag=BlueTeam] @e[limit=1,tag=BlueTeamSpawn]
tp @e[tag=RedTeam] @e[limit=1,tag=RedTeamSpawn]
tp @e[tag=Spectator] @e[limit=1,tag=SpectatorSpawn]

execute if entity @e[tag=Dodgeball_Debug_Mode] run say teams triggered