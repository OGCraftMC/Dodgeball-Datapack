execute at @e[tag=SpectatorSpawn] run tag @e[distance=..3] remove RedTeam
execute at @e[tag=SpectatorSpawn] run tag @e[distance=..3] remove BlueTeam

schedule function dodgeball:eliminated_player 1s
