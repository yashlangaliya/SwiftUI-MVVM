//
//  LoadingView.swift
//  SwiftUI-MVVM
//
//  Created by Yash Langaliya on 27/03/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .gray))
                .scaleEffect(2)
        }
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
