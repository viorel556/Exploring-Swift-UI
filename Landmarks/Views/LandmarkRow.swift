//
//  LandmarkView.swift
//  Landmarks
//
//  Created by Viorel Harabaru  on 06.04.2024.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    // Declaring variable here is similar to props in react;
    // - we have a view that will receive certain data of a certain type
    // - based on data we receive, the content will be desplayed accordingly;
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview ("Turtle Rock") {
    
    Group { // just for displaying puproses. Final view looks like above
        LandmarkRow(landmark: landmarks[0])
    }
}


    


