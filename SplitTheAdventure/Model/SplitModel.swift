//
//  SplitModel.swift
//  SplitTheAdventure
//
//  Created by Jesus Jaime Cano Terrazas on 31/08/21.
//

import Foundation

class SplitModel: Codable {
    var name: String
    var description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}
