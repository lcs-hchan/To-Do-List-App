//
//  LandingView.swift
//  To-Do List App
//
//  Created by Hayden Chan on 2024-04-05.
//

import SwiftUI
import SwiftData

struct LandingView: View {
    @State var newItemDesciption: String = ""
    
    @State var searchText = ""
    
    @Query var todos: [TodoItem]
    
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationView{
            VStack{
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)

                    }
                    .onDelete(perform: removeRows)
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
            .onAppear{
                printCommandToOpenDatabaseFile()
            }
        }
        
        
    }
    
    func createToDo (withTitle title: String) {
        
        let todo = TodoItem(
            title: title
        , done: false)
        
        modelContext.insert(todo)
    }
    func removeRows(at offsets: IndexSet){
        for offset in offsets{
            modelContext.delete(todos[offset])
        }
    }
}
#Preview {
    LandingView()
        .modelContainer(TodoItem.preview)
}
