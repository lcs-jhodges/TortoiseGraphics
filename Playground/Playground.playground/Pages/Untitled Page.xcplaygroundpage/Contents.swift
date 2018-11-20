import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 800, height: 500))
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    turtle.left(6)
    turtle.penUp()
    turtle.goto(-145,-10)
    turtle.penDown()
    turtle.right(45)
    turtle.curve(withSides: 150, withSize: 10, drawSides: 38)
    turtle.right(90)
    turtle.curve(withSides: 150, withSize: 10, drawSides: 38)
    turtle.right(90)
    turtle.curve(withSides: 150, withSize: 10, drawSides: 38)
    turtle.right(90)
    turtle.curve(withSides: 150, withSize: 10, drawSides: 38)
    turtle.right(90)
    turtle.curve(withSides: 150, withSize: 10, drawSides: 38)
    turtle.right(90)
    turtle.curve(withSides: 150, withSize: 10, drawSides: 38)
    turtle.right(90)
    turtle.curve(withSides: 150, withSize: 10, drawSides: 38)
    turtle.right(90)
    turtle.curve(withSides: 150, withSize: 10, drawSides: 38)
    turtle.right(90)
    turtle.curve(withSides: 150, withSize: 10, drawSides: 38)
    turtle.right(90)
    turtle.curve(withSides: 150, withSize: 10, drawSides: 38)
    turtle.penUp()
    turtle.goto(-12,0)
    turtle.penDown()
    
    
    
    for _ in 1...10 {
        turtle.right(2)
        
        for _ in 1...14 {
            turtle.right(40)
            turtle.forward(20)
        }
        for _ in 1...14 {
            turtle.right(40)
            turtle.forward(20)
        }
        
        for _ in 1...14 {
            turtle.right(36)
            turtle.forward(24)
        }
        
        
    }
    
}

