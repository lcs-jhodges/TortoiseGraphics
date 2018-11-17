import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
canvas.frameRate = 30
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { turtle in
    
  
   turtle.penColor(.red)
    turtle.penDown()
    turtle.right(25)
    turtle.forward(45)
    turtle.right(65)
    turtle.forward(50)
    turtle.right(65)
    turtle.forward(45)
    turtle.right(115)
    turtle.forward(90)

}
