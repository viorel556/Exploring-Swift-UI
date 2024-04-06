//
//  SwiftUIView.swift
//  Learning Swift UI
//
//  Created by Viorel Harabaru  on 06.04.2024.
//

import SwiftUI

struct BridgeView: View {
    var body: some View {
        Image("leuseni_bridge")
            .resizable()
            .frame(width: 340, height: 290)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 7)
    }
}


#Preview {
    BridgeView()
}
