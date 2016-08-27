canvas = window.document:getElementById("canvas")
ctx = canvas:getContext("2d")

draw_red_square = function(rotation)
    ctx.fillStyle = "black"
    ctx:fillRect(0,0,512,512)
    ctx:save()
        ctx:translate(256,256)
        ctx:rotate(rotation)
        ctx.fillStyle = "red"
        ctx:fillRect(-64,-64,128,128)
    ctx:restore()
end

rotation = 0.0

update = function()
    rotation = rotation + 0.005
    draw_red_square(rotation)
    window:requestAnimationFrame(update)
end

window:requestAnimationFrame(update)
