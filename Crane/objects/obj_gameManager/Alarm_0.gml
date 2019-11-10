/// @description going to game room
// You can write your code in this editor
// global.timeLeft = 120000000
global.timeOver = false
global.timeLeft = startTimerAt

global.leftScore = 0
global.leftIandO = 0
global.leftDifficult = 0
global.leftHoles = 0

global.rightScore = 0
global.rightIandO = 0
global.rightDifficult = 0
global.rightHoles = 0
room_goto(rm_game)

// DECORATIVE CRAB
// instance_create_depth(24*(room_width/25), room_height-(spr_crab.sprite_height/1.5), 0, obj_crab)