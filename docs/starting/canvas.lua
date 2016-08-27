canvas = window.document:getElementById("canvas")
ctx = canvas:getContext("2d")

ctx.fillStyle = "black"
ctx:fillRect(0,0,512,512)
ctx.fillStyle = "red"
ctx:fillRect(128,128,256,256)
