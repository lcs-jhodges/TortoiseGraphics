import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 800, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 50
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { t in
    
    t.ycor
    t.uppercaseJ()
    t.lowercasea()
    t.lowercasec()
    t.lowercasek()
    t.ycor
}

