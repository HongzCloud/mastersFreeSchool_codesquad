//
//  main.swift
//  LengthConversion
//
//  Created by 오킹 on 2021/01/03.
//

import Foundation

//센티미터 단위 값을 저장한 변수를 미터 단위 값으로 변환한 후 변수에 저장하고 저정한 변수 값을 출력한다.
func convertToM(cm: String) -> String {
   
    //길이 단위를 바꿀 때 곱하거나 나누는 값은 바뀌지 않는 값이다. 따라서 상수 값으로 지정해서 프로그램을 구현한다.
    let convertFormulaNumber: Float = 100
    let separatedInput = Float(cm.components(separatedBy: "cm")[0])! / convertFormulaNumber
    let out: String = String(separatedInput) + "m"
    return out
}

func convertToCM(m: String) -> String {
    //길이 단위를 바꿀 때 곱하거나 나누는 값은 바뀌지 않는 값이다. 따라서 상수 값으로 지정해서 프로그램을 구현한다.
    let convertFormulaNumber: Float = 100
    let separatedInput = Float(m.components(separatedBy: "m")[0])! * convertFormulaNumber
    let out: String = String(separatedInput) + "cm"
    return out
}

func convertToCM(inch: String) -> String {
    //길이 단위를 바꿀 때 곱하거나 나누는 값은 바뀌지 않는 값이다. 따라서 상수 값으로 지정해서 프로그램을 구현한다.
    let convertFormulaNumber: Float = 2.54
    let separatedInput = Float(inch.components(separatedBy: "inch")[0])! * convertFormulaNumber
    let out: String = String(separatedInput) + "cm"
    return out
}

func convertToInch(cm: String) -> String {
    //길이 단위를 바꿀 때 곱하거나 나누는 값은 바뀌지 않는 값이다. 따라서 상수 값으로 지정해서 프로그램을 구현한다.
    let convertFormulaNumber: Float = 0.39
    let separatedInput = Float(cm.components(separatedBy: "cm")[0])! * convertFormulaNumber
    let out: String = String(separatedInput) + "Inch"
    return out
}

func convertToInch(m: String) -> String {
    //길이 단위를 바꿀 때 곱하거나 나누는 값은 바뀌지 않는 값이다. 따라서 상수 값으로 지정해서 프로그램을 구현한다.
    let convertFormulaNumber: Float = 39
    let separatedInput = Float(m.components(separatedBy: "m")[0])! * convertFormulaNumber
    let out: String = String(separatedInput) + "Inch"
    return out
}

func convertToM(inch: String) -> String {
    //길이 단위를 바꿀 때 곱하거나 나누는 값은 바뀌지 않는 값이다. 따라서 상수 값으로 지정해서 프로그램을 구현한다.
    let convertFormulaNumber: Float = 0.0254
    let separatedInput = Float(inch.components(separatedBy: "inch")[0])! * convertFormulaNumber
    let out: String = String(separatedInput) + "m"
    return out
}

func convertToYard(cm: String) -> String {
    //길이 단위를 바꿀 때 곱하거나 나누는 값은 바뀌지 않는 값이다. 따라서 상수 값으로 지정해서 프로그램을 구현한다.
    let convertFormulaNumber: Float = 0.0109361
    let separatedInput = Float(cm.components(separatedBy: "cm")[0])! * convertFormulaNumber
    let out: String = String(separatedInput) + "yard"
    return out
}

func convertToCM(yard: String) -> String {
    //길이 단위를 바꿀 때 곱하거나 나누는 값은 바뀌지 않는 값이다. 따라서 상수 값으로 지정해서 프로그램을 구현한다.
    let convertFormulaNumber: Float = 91.44
    let separatedInput = Float(yard.components(separatedBy: "yard")[0])! * convertFormulaNumber
    let out: String = String(separatedInput) + "cm"
    return out
}

func printValue(_ data: String) {
    print(data)
}
//문자열로 값 뒤에 붙어있는 단위에 따라 길이를 변환해서 결과를 출력하는 함수를 만든다.
func lengthConverter(_ input: String, _ to: String = "" ) {
    if input.hasSuffix("cm") && to == "" {
        printValue(convertToM(cm: input))
    }
    else if input.hasSuffix("m") && to == "" {
        printValue(convertToCM(m: input))
    }
    else if input.hasSuffix("inch") && to == "" {
        printValue(convertToCM(inch: input))
    }
    else if input.hasSuffix("yard") && to == "" {
        printValue(convertToM(cm: convertToCM(yard: input)))
    }
    else if input.hasSuffix("cm") && to == "inch" {
        printValue(convertToInch(cm: input))
    }
    else if input.hasSuffix("inch") && to == "m" {
        printValue(convertToM(inch: input))
    }
    else if input.hasSuffix("yard") && to == "m" {
        printValue(convertToM(cm: convertToCM(yard: input)))
    }
    else if input.hasSuffix("m") && to == "yard" {
        printValue(convertToYard(cm: convertToCM(m: input)))
    }
    else {
        print("지원하지 않는 단위 입니다.")
    }
}

//실행
//사용자가 길이 값을 입력하고 변수에 저장하도록 한다.
func startGame() {
    var gameEnd = false
    
    while !gameEnd {
        let inputData = readLine() ?? ""
        
        if inputData == "quit" || inputData == "q" {
            gameEnd = true
            return
        }
        let separatedInputData = inputData.components(separatedBy: " ")
        if separatedInputData.count == 2 {
            lengthConverter(separatedInputData[0],separatedInputData[1])
        }
        else {
            lengthConverter(separatedInputData[0])
        }
    

    }
}

startGame()
