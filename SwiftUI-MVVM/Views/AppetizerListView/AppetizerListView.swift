//
//  AppetizerListView.swift
//  SwiftUI-MVVM
//
//  Created by Yash Langaliya on 27/03/22.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject private var viewModel = AppetizerListViewModel()
    var body: some View {
        ZStack {
            NavigationView {
                List (viewModel.appetizers, id: \.id) { appetizer in
                    AppetizerCell(appetizer: appetizer)
                }.navigationTitle("Appetizers")
            }.onAppear {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading { LoadingView() }
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
