//
//  ContentView.swift
//  SwiftUINotes
//
//  Created by RYAN SPENCER on 4/2/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var points = 0
    
    var body: some View {
        
        VStack {
            
            Text("My Clicker Game")
                .font(.largeTitle)
                .foregroundStyle(.red)
            
            Spacer()
            
            Text("\(points)")
                .font(.largeTitle)
            
            Spacer()
            
            Button("Push Me"){
                points += 1
            }
            
            .buttonStyle(.borderedProminent)
            .tint(.yellow)
            .cornerRadius(15)
            .dynamicTypeSize(.large)
            .font(.largeTitle)
    
            Spacer()
            
        }
        
    }
    
}
    
#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
