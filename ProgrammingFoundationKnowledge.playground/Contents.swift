import UIKit

//MARK:- Exercise questions1
//Mission1: inch -> cm
func convertToCM(fromInches: Float) -> Float {
    return fromInches * 2.54
}

convertToCM(fromInches: 50)
convertToCM(fromInches: 15)

//Mission2: cm -> inch
func convertToInches(fromCM: Float) -> Float {
    return fromCM * 0.39
}

convertToInches(fromCM: 254)
convertToInches(fromCM: 75)

//Mission3: m -> inch
func convertToInches(fromMeter: Float) -> Float {
    return convertToInches(fromCM: fromMeter/100)
}

convertToInches(fromMeter: 1.5)
convertToInches(fromMeter: 0.4)


//MARK:- Exercise questions3
//Mission1,2 : MyPoint로 바꾸기, printPoints() 구현하기
struct MyPoint {
    var myX: Float
    var myY: Float
    
    init() {
        myX = 0
        myY = 0
    }
    
    init(x: Float, y: Float) {
        myX = x
        myY = y
    }
    
    func printPoint() {
        print("(\(myX),\(myY))")
    }
}

struct Rectangle {
    var leftTop: MyPoint
    var rightBottom: MyPoint

    init() {
        leftTop = MyPoint()
        rightBottom = MyPoint()
    }
    
    init(onePoint: MyPoint, width: Float, height: Float) {
        leftTop = onePoint
        leftTop.myY += height
        rightBottom = onePoint
        rightBottom.myX += width
    
    }
    
    func printRect() {
        print("(\(leftTop.myX), \(rightBottom.myY)), (\(leftTop.myX), \(leftTop.myY)) (\(rightBottom.myX), \(rightBottom.myY)), (\(rightBottom.myX), \(leftTop.myY))" )
    }
    
    func printPoint() {
        print("(\(leftTop.myX), \(rightBottom.myY)), (\(leftTop.myX), \(leftTop.myY)) (\(rightBottom.myX), \(rightBottom.myY)), (\(rightBottom.myX), \(leftTop.myY))" )
    }
    
}

//Mission2 : printPoints() 구현하기
var myPointB = MyPoint()
myPointB.myX = 5
myPointB.myY = 5
var RectB = Rectangle(onePoint: myPointB, width: 5, height: 10)
RectB.printPoint()

//Mission3 : moveTo() 구현하기
extension Rectangle {
    mutating func moveTo(delta: MyPoint) {
        leftTop.myX += delta.myX
        leftTop.myY += delta.myY
        rightBottom.myX += delta.myX
        rightBottom.myY += delta.myY
    }
}

RectB.moveTo(delta: MyPoint(x: -3, y: 1.5))
RectB.printRect()
