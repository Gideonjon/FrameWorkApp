//
//  DetailView.swift
//  FrameWorkApp
//
//  Created by mac on 04/02/2025.
//

import SwiftUI

struct DetailView: View {
    
    var framework : Framework
    @Binding var  isShwoingDetailView : Bool
    @State private var isShowingSafariView = false

    
    var body: some View {
        VStack{
            HStack(){
                Spacer()
                Button{
                    isShwoingDetailView = false
                          }label: {
                              Image(systemName: "xmark")
                                  .foregroundColor(Color(.label))
                                  .imageScale(.large)
                                  .frame(width: 45,height: 45)
                          } 
                
            }
            .padding()
          
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Button{
                isShowingSafariView = true
                      }label: {
                          AFButtoon(title: "Learn More")
                          
                      }
                  }
        .sheet(isPresented:$isShowingSafariView, content:{
            SafariView(url: URL(string: framework.urlString)!)
            
        })
                
              }
          
            
            
        }
        


#Preview {
    DetailView(framework: MockData.sampleFramework, isShwoingDetailView: .constant(false))

}
