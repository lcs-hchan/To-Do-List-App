//
//  LandingView.swift
//  To-Do List App
//
//  Created by Hayden Chan on 2024-04-05.
//

import SwiftUI

struct LandingView: View {
    @State var newItemDesciption: String = ""
    
    @State var searchText = ""
    
    @State var todos: [TodoItem] = exampleItems
    var body: some View {
        NavigationView{
            VStack{
                List(todos) { todo in
                    ItemView(currentItem: todo )
                        .swipeActions{
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                    
                }
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text: $newItemDesciption)
                    Button("Add"){
                        createToDo(withTitle: newItemDesciption)
                        
                    }
                    .font(.caption)
                    .disabled(newItemDesciption.isEmpty == true)
                    
                    
                }
                .padding()
                
            }
            .navigationTitle("To do")
        }
        
        
    }
    
    func createToDo (withTitle title: String) {
        
        let todo = TodoItem(title: title, done: false)
        
        todos.append(todo)
    }
    func delete(_ todo: TodoItem) {
        todos.removeAll {currentItem in
            currentItem.id == todo.id
            
        }
    }
}

#Preview {
    LandingView()
}
