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
    turtle.goto(0,0)
    turtle.penDown()


    
   for _ in 1...14 {
        turtle.right(10)
        
        for _ in 1...14 {
            turtle.right(10)
            turtle.forward(2.5)
        }
        for _ in 1...14 {
            turtle.right(20)
            turtle.forward(5)
    }
    
        for _ in 1...14 {
            turtle.right(18)
            turtle.forward(6)
        }
    
    
    }
    
}

