//
//  KalorienApp.swift
//  Kalorien
//
//  Created by Marvin Polscheit on 11.11.23.
//

import SwiftUI

@main
struct KalorienApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
