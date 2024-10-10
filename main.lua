function love.load()

wf = require('libraries.windfield')
world = wf.newWorld(0,0, true)
world:setGravity(0, 512)

    ball = world:newRectangleCollider(300, 300, 80, 80)
    

    floorPaddle = {}
        -- floorPaddle.sprite = love.graphics.newImage('sprites/fancy-paddle-blue.png')
        ground = world:newRectangleCollider(300, 500, 300, 30)
        ground:setType('static')
        floorPaddle.speed = 500

end

function love.update(dt)

    local moveX = 0

    if love.keyboard.isDown("right") then
        moveX = floorPaddle.speed * dt
    elseif love.keyboard.isDown("left") then
        moveX = -floorPaddle.speed * dt
    end

    local currentX, currentY = ground:getPosition()
    ground:setPosition(currentX + moveX, currentY)

    world:update(dt)
end

function love.draw()

    world:draw()
end
