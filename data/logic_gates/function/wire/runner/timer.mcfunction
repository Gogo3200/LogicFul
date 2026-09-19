#Shows how many ticks it took to run.
execute unless score timer debug matches 0..1 run tellraw @a {text:"Process ran in ",color:green,extra:[{score:{objective:debug,name:timer},color:"gold"},{text:" ticks!",color:"green"}]}
#makes "ticks" singular if the score is 1. I just had to.
execute if score timer debug matches 1 run tellraw @a {text:"Process ran in ",color:green,extra:[{text:"1",color:"gold"},{text:" tick!",color:"green"}]}

