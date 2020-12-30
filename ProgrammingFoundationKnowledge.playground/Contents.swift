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

//MARK:- Exercise questions2
//Mission1 : Rectangle
struct Rectangle {
    let leftTopX: Float = 4.5
    let leftTopY: Float = 10.5
    let rightBottomX: Float = 15
    let rightBottomY: Float = 3.5
    
    func printRect() {
        print("(\(leftTopX), \(rightBottomY)), (\(leftTopX), \(leftTopY)) (\(rightBottomX), \(rightBottomY)), (\(rightBottomX), \(leftTopY))" )
    }
}

//Mission2 : 호출하기
let Rectangle1 = Rectangle()
Rectangle1.printRect()

//Mission3 : printArea()
extension Rectangle {
    func printArea() {
        let a = rightBottomX-leftTopX
        let b = leftTopY-rightBottomY
        let area = (a*b)*(a*b)
        print(sqrt(Double(area)))
    }
}

Rectangle1.printArea()

//Mission4 : Float형
Rectangle1.printRect()

//Mission5 : center

extension Rectangle {
    func printCenter() {
        let x = (rightBottomX+leftTopX)/2
        let y = (leftTopY+rightBottomY)/2
        print("(\(x),\(y))")
    }
}

Rectangle1.printCenter()
