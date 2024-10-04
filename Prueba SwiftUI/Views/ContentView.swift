//
//  ContentView.swift
//  Prueba SwiftUI
//
//  Created by Milton Putallaz on 04/10/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Spacer()
            Button("Go to page 2") {
                router.navigate(to: .page2)
            }
            Spacer()
            Button("Go to page 3") {
                router.navigate(to: .page3)
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
