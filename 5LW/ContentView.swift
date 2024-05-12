//
//  ContentView.swift
//  5LW
//
//  Created by Артем Кривдин on 25.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var vM = GameViewModel()
    
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            WordsGridView(vM: vM)
            Spacer()
            Spacer()
            KeyboardView(vM: vM)
            Spacer()
        }
        .padding()
        .background(.black)
        
    }
}

#Preview {
    ContentView()
}
