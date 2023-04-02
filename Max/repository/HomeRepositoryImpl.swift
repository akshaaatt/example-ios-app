//
//  HomeRepositoryImpl.swift
//  Max
//
//  Created by avataar on 22/02/23.
//

import Foundation
import Alamofire
import Combine

class HomeRepositoryImpl: HomeRepository {
    
    func fetchData() -> AnyPublisher<[APIData], AFError> {
        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")!
               
       return AF.request(url,method: .get)
           .validate()
           .publishDecodable(type: [APIData].self)
           .value()
           .eraseToAnyPublisher()
    }
}
