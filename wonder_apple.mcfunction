execute as @e[tag=nit] at @s if entity @p[tag=hold] run tp @s 648.3 73 297.6 facing entity @p feet
execute as @e[tag=none] at @s if entity @p[tag=hold] run tp @s 648.0 73 299.5 facing entity @p feet
execute as @e[type=item,tag=!apple,nbt={Item:{id:"minecraft:enchanted_golden_apple"}}] at @s positioned ~ ~-0.5 ~ if entity @e[tag=nit,distance=..0.5] run tag @e[tag=nit] add pick
execute as @e[tag=nit,tag=pick] run kill @e[type=item,tag=!apple,nbt={Item:{id:"minecraft:enchanted_golden_apple"}}]
execute as @e[tag=nit,tag=pick] run data merge entity @s {HandItems:[{id:"minecraft:enchanted_golden_apple",Count:1b},{}]}
scoreboard players set @e[tag=nit,tag=pick] clock 1
tag @e[tag=nit,tag=pick] remove pick

scoreboard players add @e[tag=nit,scores={clock=1..}] clock 1
execute as @e[tag=nit,scores={clock=..30}] at @s run tp @s ~ ~ ~ ~ 45
execute as @e[tag=nit,scores={clock=31..}] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=nit,scores={clock=31}] at @s run data merge entity @s {HandItems:[{id:"minecraft:enchanted_golden_apple",Count:1b},{}]}

execute as @e[tag=nit,scores={clock=31}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=nit,scores={clock=35}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=nit,scores={clock=39}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=nit,scores={clock=43}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=nit,scores={clock=47}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=nit,scores={clock=51}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=nit,scores={clock=54}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1

execute as @e[tag=nit,scores={clock=31}] at @s positioned ^ ^1.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=nit,scores={clock=35}] at @s positioned ^ ^1.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=nit,scores={clock=39}] at @s positioned ^ ^1.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=nit,scores={clock=43}] at @s positioned ^ ^1.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=nit,scores={clock=47}] at @s positioned ^ ^1.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=nit,scores={clock=51}] at @s positioned ^ ^1.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=nit,scores={clock=54}] at @s positioned ^ ^1.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force

execute as @e[tag=nit,scores={clock=54}] run data merge entity @s {HandItems:[{},{}]}
execute as @e[tag=nit,scores={clock=54}] at @s run tag @p remove hold
execute as @e[tag=nit,scores={clock=64}] at @s run playsound entity.villager.yes master @p ~ ~ ~ 1 1
execute as @e[tag=nit,scores={clock=69}] at @s run data merge entity @s {Glowing:1b}
execute as @e[tag=nit,scores={clock=89}] at @s run effect give @s minecraft:levitation 20 2 false
execute as @e[tag=nit,scores={clock=89..129}] at @s run tp @s ~ ~0.08 ~ ~ ~
execute as @e[tag=nit,scores={clock=130..174}] at @s run tp @s ~ ~0.08 ~ ~ 45
execute as @e[tag=nit,scores={clock=175..189}] at @s run tp @s ~ ~0.08 ~ ~ -45
execute as @e[tag=none] at @s if entity @e[tag=nit,scores={clock=93..189}] run tp @s 648.0 73 299.5 facing entity @e[tag=nit,limit=1] feet
execute as @e[tag=nit,scores={clock=189}] at @s run playsound entity.generic.explode master @p ~ ~ ~ 1 1
execute as @e[tag=nit,scores={clock=189}] at @s run playsound entity.generic.explode master @p ~ ~ ~ 1 1
execute as @e[tag=nit,scores={clock=189}] at @s run particle explosion_emitter ~ ~ ~ 0.01 0.01 0.01 0 1 force
execute as @e[tag=nit,scores={clock=191}] at @s run scoreboard players set @e[tag=none] clock 1
execute as @e[tag=nit,scores={clock=191}] at @s run playsound entity.villager.death master @p ~ ~ ~ 1 1
execute as @e[tag=nit,scores={clock=191}] at @s run kill @s
scoreboard players add @e[tag=none,scores={clock=1..}] clock 1
execute as @e[tag=none,scores={clock=40}] at @s run tp @s ~ ~ ~ ~ -76.0
execute as @e[tag=none,scores={clock=41..103}] at @s run tp @s ~ ~ ~ ~-1 ~1
execute as @e[tag=none,scores={clock=104..114}] at @s run tp @s ~ ~ ~ ~ ~1
execute as @e[tag=none,scores={clock=115}] at @s run tag @p add holdb
execute as @e[tag=none,scores={clock=115}] at @s run scoreboard players set @e[tag=none] clock 0
execute as @e[tag=none] at @s if entity @p[tag=holdb] run tp @s 648.0 73 299.5 facing entity @p feet

execute as @e[type=item,tag=!apple,nbt={Item:{id:"minecraft:enchanted_golden_apple"}}] at @s positioned ~ ~-0.5 ~ if entity @e[tag=none,distance=..0.5] run tag @e[tag=none] add pick
execute as @e[tag=none,tag=pick] run kill @e[type=item,tag=!apple,nbt={Item:{id:"minecraft:enchanted_golden_apple"}}]
execute as @e[tag=none,tag=pick] run data merge entity @s {HandItems:[{id:"minecraft:enchanted_golden_apple",Count:1b},{}]}
scoreboard players set @e[tag=none,tag=pick] clock 116
tag @e[tag=none,tag=pick] remove pick
execute as @e[tag=none,scores={clock=116}] at @s run summon villager 643.0 73 299.5 {Age:-10000,AgeLocked:1b,Tags:["baby"]}
execute as @e[tag=none,scores={clock=116}] at @s run tag @p remove holdb
execute as @e[tag=baby] at @s if entity @e[tag=none,scores={clock=116..195}] run tp @s 643.0 73 299.5
execute as @e[tag=none,scores={clock=116..146}] at @s run tp @s ~ ~ ~ ~ 45
execute as @e[tag=none,scores={clock=147}] at @s run tp @s ~ ~ ~ facing entity @e[tag=baby,limit=1] feet
execute as @e[tag=baby] at @s if entity @e[tag=none,scores={clock=162}] run tp @s 643.0 73 299.5 -90 0
execute as @e[tag=none,scores={clock=157..193}] at @s run tp @s ~-0.1 ~ ~
execute as @e[tag=none,scores={clock=195}] at @s run tp @s ~ ~ ~ ~ 40
execute as @e[tag=baby] at @s if entity @e[tag=none,scores={clock=195..217}] run tp @s 643.0 73 299.5 -90 -40
execute as @e[tag=none,scores={clock=200}] at @s run summon item ~ ~0.8 ~ {PickupDelay:32767,Motion:[-0.15,0.1,0.0],Tags:["apple"],Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}
execute as @e[tag=none,scores={clock=200}] at @s run data merge entity @s {HandItems:[{},{}]}
execute as @e[tag=baby] if entity @e[tag=none,scores={clock=208}] run data merge entity @s {HandItems:[{id:"minecraft:enchanted_golden_apple",Count:1b},{}]}
execute as @e[tag=none,scores={clock=208}] at @s run kill @e[tag=apple]
execute as @e[tag=none,scores={clock=259}] at @s run data merge entity @s {NoAI:0b}
execute as @e[tag=baby] at @s if entity @e[tag=none,scores={clock=218..346}] run tp @s 643.0 73 299.5 facing entity @e[tag=none,limit=1]
execute as @e[tag=none,scores={clock=218..260}] at @s run tp @s ~ ~ ~0.3 -10 0
execute as @e[tag=none,scores={clock=260}] at @s run summon armor_stand 650 72 326 {Invisible:1b,Tags:["door"]}
execute as @e[tag=none,scores={clock=265}] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=none,scores={clock=318}] at @s run data merge entity @s {NoAI:0b}
execute as @e[tag=none,scores={clock=320}] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=none,scores={clock=270..320}] at @s run tp @s ^ ^ ^0.3 facing entity @e[tag=door,limit=1] feet
execute as @e[tag=none,scores={clock=322}] at @s run tp @s 650.5 72 326 -90 0
execute as @e[tag=none,scores={clock=325}] at @s run tp @s 651.0 72.5 326 -90 0
execute as @e[tag=none,scores={clock=328}] at @s run tp @s 651.5 73 326 -90 0
execute as @e[tag=none,scores={clock=328}] at @s run fill 652 73 326 652 73 326 oak_door[facing=east,open=true,half=lower,hinge=right]
execute as @e[tag=none,scores={clock=328}] at @s run fill 652 74 326 652 74 326 oak_door[facing=east,open=true,half=upper,hinge=right]
execute as @e[tag=none,scores={clock=328}] positioned 652 73 326 run playsound block.wooden_door.open master @p ~ ~ ~ 4 1 1
execute as @e[tag=none,scores={clock=329}] at @s run tp @s 652.0 73 326 -90 0
execute as @e[tag=none,scores={clock=330}] at @s run tp @s 652.5 73 326 -90 0
execute as @e[tag=none,scores={clock=331}] at @s run tp @s 653.0 73 326 -90 0
execute as @e[tag=none,scores={clock=346}] at @s run fill 652 73 326 652 73 326 oak_door[facing=east,open=false,half=lower,hinge=right]
execute as @e[tag=none,scores={clock=346}] at @s run fill 652 74 326 652 74 326 oak_door[facing=east,open=false,half=upper,hinge=right]
execute as @e[tag=none,scores={clock=346}] positioned 652 73 326 run playsound block.wooden_door.close master @p ~ ~ ~ 4 1 1
execute as @e[tag=none,scores={clock=380}] at @s run tp @s 654.5 73 322.7 160 0
execute as @e[tag=none,scores={clock=381}] at @s run tp @s 654.5 73 322.6 160 0
execute as @e[tag=none,scores={clock=382}] at @s run tp @s 654.5 73 322.5 160 0
execute as @e[tag=none,scores={clock=383}] at @s run tp @s 654.6 73 322.4 160 0
execute as @e[tag=none,scores={clock=384}] at @s run tp @s 654.7 73 322.3 160 0
execute as @e[tag=baby] at @s if entity @e[tag=none,scores={clock=347..367}] run tp @s 643.0 73 299.5 -120 0
execute as @e[tag=baby] at @s if entity @e[tag=none,scores={clock=368..384}] run tp @s 643.0 73 299.5

execute as @e[tag=none,scores={clock=384}] at @s run scoreboard players set @e[tag=baby] clock 20
scoreboard players add @e[tag=baby,scores={clock=1..}] clock 1
execute as @e[tag=baby,scores={clock=1..88}] at @s run tp @s 643.0 73 299.5 -145 0

execute as @e[tag=baby,scores={clock=31}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=baby,scores={clock=35}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=baby,scores={clock=39}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=baby,scores={clock=43}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=baby,scores={clock=47}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=baby,scores={clock=51}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1
execute as @e[tag=baby,scores={clock=54}] at @s run playsound entity.generic.eat master @p ~ ~ ~ 1 1

execute as @e[tag=baby,scores={clock=31}] at @s positioned ^ ^0.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=baby,scores={clock=35}] at @s positioned ^ ^0.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=baby,scores={clock=39}] at @s positioned ^ ^0.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=baby,scores={clock=43}] at @s positioned ^ ^0.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=baby,scores={clock=47}] at @s positioned ^ ^0.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=baby,scores={clock=51}] at @s positioned ^ ^0.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[tag=baby,scores={clock=54}] at @s positioned ^ ^0.4 ^0.4 run particle item enchanted_golden_apple ~ ~ ~ 0.1 0.1 0.1 0 3 force

execute as @e[tag=baby,scores={clock=54}] run data merge entity @s {HandItems:[{},{}]}
execute as @e[tag=baby,scores={clock=64}] at @s run playsound entity.villager.yes master @p ~ ~ ~ 1 1.5
execute as @e[tag=baby,scores={clock=69}] at @s run data merge entity @s {Glowing:1b}
execute as @e[tag=baby,scores={clock=89..}] at @s run tp @s 643.0 73 299.5

execute as @e[tag=none] at @s if entity @e[tag=baby,scores={clock=129}] run playsound entity.generic.explode master @p ~ ~ ~ 4 1 1
execute as @e[tag=none] at @s if entity @e[tag=baby,scores={clock=129}] run playsound entity.generic.explode master @p ~ ~ ~ 4 1 1
execute as @e[tag=none] at @s if entity @e[tag=baby,scores={clock=129}] run particle explosion_emitter ~ ~ ~ 0.01 0.01 0.01 0 1 force
execute as @e[tag=none] at @s if entity @e[tag=baby,scores={clock=131}] run playsound entity.villager.death master @p ~ ~ ~ 4 1 1
execute as @e[tag=none] at @s if entity @e[tag=baby,scores={clock=131}] run kill @e[tag=none]