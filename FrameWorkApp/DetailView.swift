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
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Button{
                      }label: {
                          AFButtoon(title: "Learn More")
                          
                      }
                  }
                
              }
          
            
            
        }
        


#Preview {
    DetailView(framework: MockData.sampleFramework)

}
