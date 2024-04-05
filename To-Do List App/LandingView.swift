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
    var body: some View {
        NavigationView{
            VStack{
                List{
                    HStack{
                       Image(systemName: "circle")
                        Text("Study for Chemistry quiz")
                    }
                }
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text: $newItemDesciption)
                    
                    
                    
                }
                .padding()
                
            }
            .navigationTitle("To do")
        }
        

    }
   
}

#Preview {
    LandingView()
}
