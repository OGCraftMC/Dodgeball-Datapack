# Spawns dodgeballs at  Red Dodgeball Spawnpoints
execute as @e[tag=RedTeamDodgeballSpawn] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:snowball",Count:1b}}

# Spawns dodgeballs at Blue Dodgeball Spawnpoints
execute as @e[tag=BlueTeamDodgeballSpawn] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:snowball",Count:1b}}

# Loops this function but only if there are players left on both teams
execute if entity @e[tag=RedTeam] run execute if entity @e[tag=BlueTeam] run schedule function dodgeball:spawn_dodgeballs 3s

execute if entity @e[tag=Dodgeball_Debug_Mode] run say spawn_dodgeballs triggered