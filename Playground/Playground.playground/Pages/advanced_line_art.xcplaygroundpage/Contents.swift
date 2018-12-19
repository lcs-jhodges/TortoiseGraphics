import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics




let myFrame = CGRect(x: 0, y: 0, width: 800, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 144
canvas.color = .blue
PlaygroundPage.current.liveView = canvas

/**
 Draws `n` line segments.
 
 - parameter with: The Tortoise object that will do the drawing.
 - parameter segmentCount: Number of line segments to be drawn.
 - parameter length: The length of each line segement to be drawn.
 - parameter angle: Degrees to turn before drawing next segement.
 
 */
func polyline(with t : Tortoise, segmentCount n : Int, length : Double, angle : Double) {
    for _ in 1...n {
        t.forward(length)
        t.left(angle)
    }
}

/**
 Draws an arc with the given radius and angle.
 
 - parameter with: The Tortoise object that will do the drawing.
 - parameter radius: The radius of the circle to be drawn.
 - parameter angle: The angle subtended by the arc, in degrees.
 
 */
func arc(with t : Tortoise, radius r : Double, angle : Int) {
    
    // Source: https://bit.ly/2K9JWbz
    let arcLength = 2 * Double.pi * r * Double(abs(angle)) / 360
    let n = Int(arcLength / 4) + 1
    let stepLength = arcLength / Double(n)
    let stepAngle = Double(angle) / Double(n)
    
    // Making a slight left turn before starting reduces the error
    // caused by the linear approximation of the arc
    t.left(stepAngle / 2)
    polyline(with: t, segmentCount: n, length: stepLength, angle: stepAngle)
    t.right(stepAngle / 2)
}

func flower (with t: Tortoise) {
    var box1 = 5
    var box2 = 1
    for _ in 1...30{
    arc(with: t, radius: box1, angle: 120)
    arc(with: t, radius: box1 / 5, angle: 90)
    box1 = box1 + box2
    arc(with: t, radius: box1, angle: 90)
    box1 = box1 + box2




    }
    
}

func xline(with t: Tortoise, y:Double) {
    var x = -250
    for _ in 1...4{
        t.goto(x, y)
        x += 170
        flower(with: t)
    }
    
}


func blueprint (with t: Tortoise) {
    t.penColor(.blue)
    t.penSize(1)
    var y = 180
    for x in 1...3{
        xline(with: t, y: y-175)
    }
    
}
canvas.drawing { turtle in
    
    turtle.penSize(6)
    blueprint(with t)
    turtle.hideTortoise()
    
}


