
scoreboard players remove tracer_dist debug 1

execute if block ~ ~ ~ #replaceable if score tracer_dist debug matches 1.. positioned ^ ^ ^0.1 run return run function logic_gates:inputs/placement/raycast

execute positioned ~ ~ ~ if predicate logic_gates:inputs if score show_input debug matches 1 run return run function logic_gates:inputs/placement/summon_lever_stand {invis:"false"}
execute positioned ~ ~ ~ if predicate logic_gates:inputs unless score show_input debug matches 1 run return run function logic_gates:inputs/placement/summon_lever_stand {invis:"true"}

function logic_gates:inputs/placement/not_found_error