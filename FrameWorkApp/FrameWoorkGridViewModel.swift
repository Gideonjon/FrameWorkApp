//
//  FrameWoorkGridViewModel.swift
//  FrameWorkApp
//
//  Created by mac on 05/02/2025.
//

import SwiftUI

class FrameWoorkGridViewModel : ObservableObject{
    
    var selectedFramework : Framework?{
        didSet{
            isShowingDetailView = true
        }
        
    }
    @Published  var isShowingDetailView = false
    
    
}
