//
//  ContentView.swift
//  Learning Swift UI
//
//  Created by Viorel Harabaru  on 06.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            BridgeView()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack (alignment: .leading) {
                
                Text("Leuseni Village")
                    .font(.title)
                    .foregroundColor(.blue)
                
                
                HStack {
                    Text("Strada Gr Vieru 53")
                        .font(.subheadline)
                    Spacer()
                    Text("Hancesti. Moldova")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("About")
                    .font(.title2)
                    .foregroundColor(.gray)
                
                
                Text("This is some random descriptive text about Leuseni and stuff")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
