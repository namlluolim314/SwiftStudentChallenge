//
//  Function.swift
//  CalculusPlaygroundsApplet
//
//  Created by Milo Ullman on 18/12/25.
//

import Foundation

class Function: Identifiable {
    var transform: (Double) -> Double
    var id: UUID = UUID()
    var name: String?
    
    init(transform: @escaping (Double) -> Double) {
        self.transform = transform
    }
    
    static let square = Function { x in
        return pow(x, 2)
    }
    
    static let sine = Function { x in
        return sin(x)
    }
    
    static let exp = Function { x in
        return pow(2.7182, x)
    }

}

