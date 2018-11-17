import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 800, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 144
canvas.color = .black
PlaygroundPage.current.liveView = canvas

canvas.drawing { t in
    //colour
    t.penColor(.black)
    
    // Go to top left of canvas
    t.penUp()
    t.goto(-300, 150)
    
    t.ycor
    t.uppercaseJ()
    t.lowercasea()
    t.lowercasec()
    t.lowercasek()
    t.goto(-300, 0)
    t.ycor
}

