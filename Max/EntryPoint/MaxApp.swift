//
//  MaxApp.swift
//  Max
//
//  Created by avataar on 22/02/23.
//

import SwiftUI

@main
struct MaxApp: App {
    @ObservedObject var homeViewModel: HomeViewModel = HomeViewModel(repository: HomeRepositoryImpl())
    
    init() {
        homeViewModel.fetchDataAndPopulate()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .environmentObject(homeViewModel)
            }
        }
    }
}
