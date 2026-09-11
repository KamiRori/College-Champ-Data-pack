
scoreboard objectives add fatesplate_toolheld dummy
scoreboard players set @a fatesplate_toolheld -1

scoreboard objectives add fatesplate_toolused minecraft.used:snowball
scoreboard players set @a fatesplate_toolused 0

function fatesplate:tools/loop