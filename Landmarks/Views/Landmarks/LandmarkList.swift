//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Viorel Harabaru  on 06.04.2024.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    // LOCAL STATE HERE:
    @Environment(ModelData.self) var modelData
    /// [!] IMPORTANT: Environment is like Context in React
    /// here we take the ModelData class and create an instance from it called modelData 
    /// the class ModelData - already has the functional to retreive the data and assigns it to the first instance created (now)
    /// Any changes in this instance will be reflected EVERYWHERE in the program (because its a class)
    
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        /// Abstract: This variable is an Array of Landmark type - a copy of "landmarks"; The only difference is that the array CHANGES based on the value of local state variable "showFavoritesOnly"; - as a result shows only favorites if showFavoritesOnly = true
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationSplitView {
            
            List {
                // TOGGLE BUTTON:
                Toggle(isOn: $showFavoritesOnly) { Text("Favorites only") }
                
                // THE LIST ITSELF:
                ForEach (filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        }
        
        detail: { Text("Select a Landmark") }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData()) 
                    /// An anonymous instance of class ModelData
}
