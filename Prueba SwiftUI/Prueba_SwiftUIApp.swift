//
//  Prueba_SwiftUIApp.swift
//  Prueba SwiftUI
//
//  Created by Milton Putallaz on 04/10/2024.
//

import SwiftUI

@main
struct Prueba_SwiftUIApp: App {
    
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                ContentView()
                .navigationDestination(for: Router.Destination.self) { destination in
                    switch destination {
                    case .page2:
                        Page2()
                            .navigationTitle("Page 2")
                    case .page3:
                        Page3()
                            .navigationTitle("Page 3")
                    }
                }
            }
            .environmentObject(router)
        }
    }
}
