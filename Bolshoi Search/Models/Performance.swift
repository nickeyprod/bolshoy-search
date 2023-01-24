//
//  Performance.swift
//  Bolshoi Search
//
//  Created by Николай Ногин on 23.06.2021.
//

import Foundation


struct Performance: Hashable {
//    var id: UUID = UUID()
    var name: String
    var acts: Int
    
   
}

extension Performance {
    static func all() -> [Performance] {
//        return []
        return [Performance(name: "Лебединое озеро", acts: 3), Performance(name: "Зимняя сказка", acts: 3), Performance(name: "Мазепа", acts: 3)]
    }
}
