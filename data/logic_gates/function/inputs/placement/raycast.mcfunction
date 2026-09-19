
scoreboard players remove tracer_dist debug 1

execute if block ~ ~ ~ #replaceable if score tracer_dist debug matches 1.. positioned ^ ^ ^0.1 run return run function logic_gates:inputs/placement/raycast

execute positioned ~ ~ ~ if predicate logic_gates:inputs if score show_input debug matches 1 run return run function logic_gates:inputs/placement/summon_input {invis:"false"}
execute positioned ~ ~ ~ if predicate logic_gates:inputs unless score show_input debug matches 1 run return run function logic_gates:inputs/placement/summon_input {invis:"true"}

tellraw @p {text:"[ERROR]", color:"red",bold:true,extra:[{text:" Please replace that block!",color:"#fc7c7c",bold:true}]}