//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
canvas.frameRate = 30
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { 🐢 in
    🐢.penColor(.red)
    🐢.fillColor(.orange)
    
    🐢.penUp()
    🐢.back(100)
    🐢.penDown()
    

    🐢.goto(0,150)
    🐢.goto(0,-150)
    🐢.goto(0,0)
    🐢.goto(150,0)
    🐢.goto(-150,0)
    🐢.goto(0,0)
}

