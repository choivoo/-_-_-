# zone 1 light 0
scoreboard players set _bzone bce_sys 1
function build/ready_z1
execute unless score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 2
execute unless score _bready bce_sys matches 1 run scoreboard players add _bwait bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _berr bce_sys 1
execute if score _bwait bce_sys matches 2400.. run scoreboard players set _bsm bce_sys 7
execute if score _bready bce_sys matches 1 run scoreboard players set _bsm bce_sys 3
execute if score _bready bce_sys matches 1 run scoreboard players set _bstage bce_sys 4
execute if score _bready bce_sys matches 1 run setblock 77 103 -22 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 77 104 -22 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 77 103 -22 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 77 101 -17 lantern
execute if score _bready bce_sys matches 1 run setblock 90 103 -22 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 90 101 -17 lantern
execute if score _bready bce_sys matches 1 run setblock 110 103 -22 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 110 104 -22 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 110 103 -22 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 110 101 -17 lantern
execute if score _bready bce_sys matches 1 run setblock 124 103 -23 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 124 104 -23 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 124 103 -23 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 124 101 -17 lantern
execute if score _bready bce_sys matches 1 run setblock 77 103 21 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 77 104 21 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 77 103 21 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 77 101 16 lantern
execute if score _bready bce_sys matches 1 run setblock 90 103 21 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 90 101 16 lantern
execute if score _bready bce_sys matches 1 run setblock 111 103 21 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 111 104 21 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 111 103 21 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 111 101 16 lantern
execute if score _bready bce_sys matches 1 run setblock 124 103 20 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 124 104 20 spruce_planks
execute if score _bready bce_sys matches 1 run setblock 124 103 20 lantern ["hanging"=true]
execute if score _bready bce_sys matches 1 run setblock 124 101 16 lantern
execute if score _bready bce_sys matches 1 run fill 64 100 -5 64 102 -5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 64 103 -5 lantern
execute if score _bready bce_sys matches 1 run fill 64 100 5 64 102 5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 64 103 5 lantern
execute if score _bready bce_sys matches 1 run fill 73 100 -5 73 102 -5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 73 103 -5 lantern
execute if score _bready bce_sys matches 1 run fill 73 100 5 73 102 5 oak_fence
execute if score _bready bce_sys matches 1 run setblock 73 103 5 lantern
execute if score _bready bce_sys matches 1 run scoreboard players add _bstep bce_sys 1
