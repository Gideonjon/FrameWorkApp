//
//  FrameworkGridView .swift
//  FrameWorkApp
//
//  Created by mac on 26/01/2025.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameWoorkGridViewModel()
    
    
    let columns :[GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    
    ]
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                        
                    }
                    }
                
            }
       
        .navigationTitle("🍎 Frameworks ")
        .sheet(isPresented: $viewModel.isShowingDetailView){
            DetailView(framework:
                        viewModel.selectedFramework!,
                       isShwoingDetailView: $viewModel.isShowingDetailView) 
            
        }

          
        
        }
       
    
    }
        
}

#Preview {
    FrameworkGridView()
}


    
   


struct FrameworkTitleView: View {
    let framework : Framework
   
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
