# Winning team detection

execute unless entity @e[tag=RedTeam] run execute if entity @e[tag=BlueTeam] run title @a subtitle [{"text":"Players: ","color":"blue"},{"selector":"@a[tag=BlueTeamTitleTag]","color":"blue"}]
execute unless entity @e[tag=RedTeam] run execute if entity @e[tag=BlueTeam] run title @a title {"text":"Blue Team Won! ","color":"blue"}

execute unless entity @e[tag=BlueTeam] run execute if entity @e[tag=RedTeam] run title @a subtitle [{"text":"Players: ","color":"red"},{"selector":"@a[tag=RedTeamTitleTag]","color":"red"}]
execute unless entity @e[tag=BlueTeam] run execute if entity @e[tag=RedTeam] run title @a title {"text":"Red Team Won! ","color":"red"}

execute unless entity @e[tag=RedTeam] run execute if entity @e[tag=BlueTeam] run execute at @e[tag=SpectatorSpawn,limit=1] run teleport @e[tag=BlueTeam] ~ ~ ~
execute unless entity @e[tag=BlueTeam] run execute if entity @e[tag=RedTeam] run execute at @e[tag=SpectatorSpawn,limit=1] run teleport @e[tag=RedTeam] ~ ~ ~

# Game clean up
execute unless entity @e[tag=RedTeam] run execute unless entity @e[tag=BlueTeam] run schedule function dodgeball:end 1t

# Loops 
schedule function dodgeball:winning_team 1s