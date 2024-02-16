//
//  Item.swift
//  Koala
//
//  Created by Choiwansik on 2/15/24.
//

import Foundation

internal struct Item: Identifiable {

    internal let id = UUID()
    internal let timestamp = Date()
    internal let name: String

}
