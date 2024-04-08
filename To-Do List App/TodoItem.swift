//
//  TodoItem.swift
//  To-Do List App
//
//  Created by Hayden Chan on 2024-04-08.
//

import Foundation
struct TodoItem: Identifiable{
    let id = UUID()
    var title: String
    var done: Bool
}
let firstItem = TodoItem(title: "Study", done: true)

let secondItem = TodoItem(title: "run", done: false)

let exampleItems = [
    firstItem
    ,
    secondItem
    ,

]

