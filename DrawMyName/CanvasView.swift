import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        
        // Command "t" on canvas to make the turtle draw
        canvas.drawing { t in
            
            // Add your commands within this block
            //colour
            t.penColor(.black)
            
            // Go to top left of canvas
            t.penUp()
            t.goto(-300, 150)
            
            print(t.ycor)
            t.uppercaseJ()
            t.lowercasea()
            t.lowercasec()
            t.lowercasek()
            t.goto(-325, 0)
            t.uppercaseH()
            t.curve(withSides: -58, withSize: 2, drawSides: 3)
            t.curve(withSides: 80, withSize: 2, drawSides: 93)
            t.curve(withSides: -1000, withSize: 2, drawSides: 10)
            
            t.curve(withSides: 40, withSize: 2, drawSides: 8)
            
            print(t.ycor)

        }
    }
    
}
