//
//  HomeView.swift
//  Max
//
//  Created by avataar on 22/02/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var homeViewModel: HomeViewModel
    
    let columns = [
          GridItem(.flexible()),
          GridItem(.flexible()),
          GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(homeViewModel.listData, id: \.self) { item in
                    ElementView(element: item)
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: .infinity)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(HomeViewModel(repository: HomeRepositoryImpl()))
    }
}
