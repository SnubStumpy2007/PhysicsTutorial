function love.load()

player = {
    x = 10,
    y = 10,
    sprite = love.graphics.newImage('sprites/parrot.png')
}

crate = {
    x = 100,
    y = 100,
    sprite = love.graphics.newImage('sprites/murek zniszczalny/Animacja/00.png')
}

    wall = {
        sprite = love.graphics.newImage('sprites/fancy-paddle-blue.png'),
        x = 300,
        y = 400,
        w = 100,
        h = 50
    }

    movingPlatform = {
        sprite = love.graphics.newImage('sprites/fancy-paddle-grey.png'),
        x = 300,
        y = 400,
        w = 100,
        h = 50
    }
end

function love.update()
end

function love.draw()
    love.graphics.draw(crate.sprite, crate.x, crate.y)
    love.graphics.draw(player.sprite, player.x, player.y)
    love.graphics.draw(wall.sprite, wall.x, wall.y)
    love.graphics.draw(movingPlatform.sprite, movingPlatform.x, movingPlatform.y)
end
