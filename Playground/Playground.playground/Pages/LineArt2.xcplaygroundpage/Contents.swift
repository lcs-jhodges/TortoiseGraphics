import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 800, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 144
canvas.color = .white
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



func arm(with t:Tortoise, size:Double) {
    t.forward(size * 3)
    t.left(90)
    arc(with: t, radius: size / 3, angle: 360)
    t.right(90)
    t.back(size * 3)
    
}

func vee(with t: Tortoise, size: Double){
    t.left(45)
    arm(with: t, size: size)
    t.right(90)
    arm(with: t, size: size)
    t.left(45)
}

func stickman(with t: Tortoise, size: Double) {
    t.right(180)
    t.forward(size)
    vee(with: t, size: size)
    t.right(180)
    t.forward(size * 2)
    vee(with: t, size: size)
    t.forward(size)
    t.left(90)
    arc(with: t, radius: size, angle: 360)
    t.right(90)
}

func boy(with t : Tortoise) {
    t.goto(-130, 0)
    stickman(with: t, size: 50)
}
func junior(with t : Tortoise) {
    t.goto(80, -40)
    stickman(with: t, size: 30)
}
func adult(with t : Tortoise){
    t.goto(-20, -10)
    stickman(with: t, size: 43)
}

func drawPeople(with t : Tortoise) {
    boy(with: t)
    adult(with: t)
    junior(with: t)
}

canvas.drawing { turtle in
    
    turtle.penSize(6)
    drawPeople(with: turtle)
    
}


