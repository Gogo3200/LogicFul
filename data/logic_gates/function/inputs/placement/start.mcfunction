# 

advancement revoke @s only logic_gates:block_placed

tag @s add raycaster

scoreboard players set tracer_dist debug 1000

execute at @s anchored eyes positioned ^ ^ ^0.1 run function logic_gates:inputs/placement/raycast