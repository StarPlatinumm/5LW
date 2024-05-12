//
//  ContentView.swift
//  5LW
//
//  Created by Артем Кривдин on 25.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            WordsGridView()
            Spacer()
            Spacer()
            KeyboardView()
            Spacer()
        }
        .padding()
        .background(.black)
        
    }
}

#Preview {
    ContentView()
}
