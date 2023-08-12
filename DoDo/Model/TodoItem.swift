//
//  TodoItem.swift
//  ToDo
//
//  Created by Sanket Muchhala on 08.06.2023.
//  Copyright © 2023 Sanket Muchhala. All rights reserved.
//

import Foundation
import SwiftUI

// Model
// Our data stores as such structures.
struct TodoItem: Identifiable, Codable {
    let id = UUID()
    var title: String
    var isDone: Bool = false
    var colorName: String = "teal"
}
