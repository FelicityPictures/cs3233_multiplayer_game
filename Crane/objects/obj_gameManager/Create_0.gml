window_set_size(room_width*1, room_height*1)

startTimerAt = 120000000
// startTimerAt = 3000000

global.gravityY = 100
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

physics_world_gravity(0, global.gravityY)