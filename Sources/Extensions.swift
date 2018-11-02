public extension Tortoise {

    func square(withSize size: Double) {

        // "self" refers to any instance of the
        // Tortoise class
        self.penDown()

        //Draw four sides of square
        for _ in 1...4 {
            self.forward(size)
            self.right(90)
        }
    }

    func curve(withSides sideCount: Int, withSize size: Double, drawSides sideLimit: Int) {
        self.penDown()
        for _ in 1...sideLimit {
            self.forward(size)
            self.right(360 / Double(sideCount))
        }
        self.penUp()
    }

    func uppercaseJ() {
        self.setHeading(90)
        self.left(180)
        self.curve(withSides: 43, withSize: 2, drawSides: 10)
        self.curve(withSides: 150, withSize: 2, drawSides: 30)
        self.curve(withSides: 86, withSize: 1, drawSides: 30)
        self.curve(withSides: 200, withSize: 2, drawSides: 30)
        self.curve(withSides: -200, withSize: 2, drawSides: 25)
        self.curve(withSides: -43, withSize: 2, drawSides: 15)
        self.curve(withSides: -100, withSize: 2, drawSides: 25)
        self.curve(withSides: -100, withSize: 2, drawSides: 8)
        self.right(180)
        self.curve(withSides: -100, withSize: 2, drawSides: 28)
    }
    func lowercasea() {

        self.curve(withSides: 80, withSize: 2, drawSides: 20)
        self.right(180)
        self.curve(withSides: -70, withSize: 2, drawSides: 40)
        self.curve(withSides: -60, withSize: 2, drawSides: 12)
        self.curve(withSides: -100, withSize: 2, drawSides: 16)
        self.left(160)
        self.curve(withSides: -60, withSize: 4, drawSides: 11)
    }
    func lowercasec() {
        self.curve(withSides: -80, withSize: 2, drawSides: 16)
        self.curve(withSides: 80, withSize: 2, drawSides: 18)
        self.right(180)
        self.curve(withSides: -80, withSize: 2, drawSides: 15)
        self.curve(withSides: -65, withSize: 2, drawSides: 30)
        self.curve(withSides: 65, withSize: 2, drawSides: 3)

    }
    func lowercasek() {
        self.left(2)
        self.curve(withSides: -100, withSize: 3, drawSides: 15)
        self.curve(withSides: -100, withSize: 6, drawSides: 7)
        self.curve(withSides: -10, withSize: 6, drawSides: 5)
        self.curve(withSides: -200, withSize: 20, drawSides: 4)
        self.right(180)
        self.curve(withSides: 200, withSize: 20, drawSides: 1)
        self.curve(withSides: 20, withSize: 3, drawSides: 20)
        self.right(140)
        self.curve(withSides: 200, withSize: 20, drawSides: 1)
        self.curve(withSides: -40, withSize: 5, drawSides: 2)
    }
}
