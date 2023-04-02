//
//  APIData.swift
//  Max
//
//  Created by avataar on 22/02/23.
//

import Foundation

struct APIData: Decodable, Identifiable, Hashable {
    var albumId: Int = 0
    var id: Int = 0
    var title: String = ""
    var url: String = ""
    var thumbnailUrl: String = ""
}
