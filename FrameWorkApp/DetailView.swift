//
//  DetailView.swift
//  FrameWorkApp
//
//  Created by mac on 04/02/2025.
//

import SwiftUI

struct DetailView: View {
    
    var framework : Framework
    
    var body: some View {
        VStack{
            FrameworkTitleView(framework: framework)
            
            
            
        }
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework)

}
