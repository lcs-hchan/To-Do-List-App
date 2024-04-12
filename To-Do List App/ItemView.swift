//
//  ItemView.swift
//  To-Do List App
//
//  Created by Hayden Chan on 2024-04-08.
//

import SwiftUI
import SwiftData

struct ItemView: View {
    
    @Bindable var currentItem: TodoItem
    
    var body: some View {
        Label(
        title: {
            TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
        }, icon: {
            Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                .onTapGesture {
                    currentItem.done.toggle()
                }
            }
        )
    }
}
 
#Preview {
    
    let container = TodoItem.preview
    
    return List {
        ItemView(currentItem: TodoItem.someItem)
        ItemView(currentItem: TodoItem.anotherItem)
    }
    .modelContainer(container)
    
}
