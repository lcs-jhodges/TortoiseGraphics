import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let canvas = PlaygroundCanvas(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
canvas.frameRate = 30
canvas.color = .white
PlaygroundPage.current.liveView = canvas


canvas.drawing { turtle in
    
    
    turtle.right(30)
    
    for _ in 1...10 {
        for _ in 1...10 {
        turtle.forward(100)
        turtle.right(120)
    }
    
    turtle.left(10)
}
}
