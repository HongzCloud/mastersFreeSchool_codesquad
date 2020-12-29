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
