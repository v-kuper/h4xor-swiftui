//
//  PostData.swift
//  H4XOR News
//
//  Created by Vitali Kupratsevich on 11/15/25.
//

import Foundation

struct PostData: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String { objectID }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
