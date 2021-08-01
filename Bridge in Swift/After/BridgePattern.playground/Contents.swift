import UIKit

protocol Shape {
    var impl: ShapeColorImpl {get}
    func draw()
}

struct Rectangle: Shape {
    var impl: ShapeColorImpl
    
    func draw() {
        print("\t draw rectangle")
        impl.filledColor()
    }
}

struct Triangle: Shape {
    var impl: ShapeColorImpl
    
    func draw() {
        print("\t draw triangle")
        impl.filledColor()
    }
}

// create implementaion class

protocol ShapeColorImpl {
    func filledColor()
}

struct RedBackground: ShapeColorImpl {
    func filledColor() {
        print("\t filled red background")
    }
}

struct YellowBackground: ShapeColorImpl {
    func filledColor() {
        print("\t filled yellow background")
    }
}

// create helper enum and class for get correct Color back ground
enum ColorBackground {
    case red
    case yellow
}

struct ColorBackgroundFactory {
    static func createColorBackround(type: ColorBackground) -> ShapeColorImpl {
        type == .red ? RedBackground() : YellowBackground()
    }
}

let yellowRect = Rectangle(impl: ColorBackgroundFactory.createColorBackround(type: .yellow))
yellowRect.draw()
let redTriangle = Triangle(impl: ColorBackgroundFactory.createColorBackround(type: .red))
redTriangle.draw()

// then it more easier if we want to filled back ground with other shape.
//Example:

struct Circle: Shape {
    var impl: ShapeColorImpl
    func draw() {
        print("\t draw circle")
        impl.filledColor()
    }
}


let yellowCircle = Circle(impl: ColorBackgroundFactory.createColorBackround(type: .yellow))
yellowCircle.draw()
