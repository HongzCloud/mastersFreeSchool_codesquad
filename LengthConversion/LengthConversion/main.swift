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

