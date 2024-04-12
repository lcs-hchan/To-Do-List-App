//
//  TodoItem.swift
//  To-Do List App
//
//  Created by Hayden Chan on 2024-04-08.
//

import SwiftData

@Model
class TodoItem: Identifiable{
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
    
}
let firstItem = TodoItem(title: "Study", done: true)

let secondItem = TodoItem(title: "run", done: false)

let exampleItems = [
    firstItem
    ,
    secondItem
    ,

]

