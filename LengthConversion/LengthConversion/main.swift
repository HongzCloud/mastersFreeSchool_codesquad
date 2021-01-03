//
//  main.swift
//  LengthConversion
//
//  Created by 오킹 on 2021/01/03.
//

import Foundation

func convertToM(cm: Int) {
    print("\(Float(cm) / 100) m")
}

func convertToCM(m: Float) {
    print("\(Int(m * 100)) cm")
}

convertToM(cm: 120)
convertToCM(m: 1.86)

//함수
//센티미터 단위 값을 변수에 저장하고 변환하는데 사용한다.
var data: String = "183cm"

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
    let separatedInput = Float(m.components(separatedBy: "cm")[0])! * convertFormulaNumber
    let out: String = String(separatedInput) + "cm"
    return out
}

func printValue(_ data: String) {
    print(data)
}
//문자열로 값 뒤에 붙어있는 단위에 따라 길이를 변환해서 결과를 출력하는 함수를 만든다.
func lengthConverter(_ input: String) {
    if input.hasSuffix("cm") {
        printValue(convertToM(cm: input))
    }
    else {
        printValue(convertToCM(m: input))
    }
}

lengthConverter(data)
//사용자가 길이 값을 입력하고 변수에 저장하도록 한다.
let inputData = readLine()
lengthConverter(inputData ?? "")
