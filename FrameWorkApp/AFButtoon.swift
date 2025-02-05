//
//  AFButtoon.swift
//  FrameWorkApp
//
//  Created by mac on 05/02/2025.
//

import SwiftUI

struct AFButtoon: View {
    var title : String
     
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        
    }
}

#Preview {
    AFButtoon(title: "Dakeem Get Babe")
}
