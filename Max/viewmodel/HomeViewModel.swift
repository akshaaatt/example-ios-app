//
//  HomeViewModel.swift
//  Max
//
//  Created by avataar on 22/02/23.
//

import Foundation
import Combine

class HomeViewModel : ObservableObject {
    @Published var listData: [APIData] = []
    private var subscriptions: Set<AnyCancellable> = []

    var repository: HomeRepository
    
    init(repository: HomeRepository) {
        self.repository = repository
    }
    
    func fetchDataAndPopulate () {
        repository.fetchData()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {completion in
                print(completion)
            }, receiveValue: {value in
                self.listData = value
            })
            .store(in: &subscriptions)
    
    }
}
