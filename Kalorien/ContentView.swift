//
//  ContentView.swift
//  Kalorien
//
//  Created by Marvin Polscheit on 11.11.23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObject
    
    //sort descriptors is just a type annotation, so we need a variable of fetched results of type food
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var food: FetchedResults<Food>
    @State private var showingAddView = false
    
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("\(Int(totalCaloriesToday())) Kcal (heute)")
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                List {
                    ForEach(food) { food in
                        NavigationLink(destination: Text("\(food.calories)")) {
                            
                        }
                    }
                }
            }
            .navigationTitle("Kalorien")
        }
    }
    
    private func totalCaloriesToday() -> Double {
        return 0.0
    }
}

#Preview {
    ContentView()
}
