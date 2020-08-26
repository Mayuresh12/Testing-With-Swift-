//
//  Converter.swift
//  TaylorSwiftSOng
//
//  Created by Mayuresh Rao on 8/25/20.
//  Copyright © 2020 Mayuresh Rao. All rights reserved.
//

import Foundation

struct Converter {
    func convertToCelsius(fahrenheit: Double) -> Double {
        let fahrenheit = Measurement(value: fahrenheit, unit: UnitTemperature.fahrenheit)
        let celsius = fahrenheit.converted(to: .celsius)
        return celsius.value
    }
}
