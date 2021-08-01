import UIKit

protocol Shape {
    func draw()
}

struct Rectangle: Shape {
    func draw() {
        print("\t draw rectangle")
    }
}

struct Triangle: Shape {
    func draw() {
        print("\t draw triangle")
    }
}

// want to add color

protocol ShapeColor: Shape {
    func color()
}

struct RectangleRed: ShapeColor {
    func color() {
        print("\t Rectangle filled with color red")
    }
    
    func draw() {
        print("\t draw rectangle")
    }
}

struct TriangleYellow: ShapeColor {
    func color() {
        print("\t Triangle filled with color yellow")
    }
    
    func draw() {
        print("\t draw triangle")
    }
}

let redRect = RectangleRed()
redRect.draw()
redRect.color()
let yellowtriangle = TriangleYellow()
yellowtriangle.draw()
yellowtriangle.color()


