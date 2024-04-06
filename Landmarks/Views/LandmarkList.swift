//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Viorel Harabaru  on 06.04.2024.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationSplitView {
            
            List (landmarks) { landmark in
                
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
       
        } 
    detail: {
             // This text is showed as a "go back" thing for a list
             Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
