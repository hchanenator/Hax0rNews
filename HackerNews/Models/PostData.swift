//
//  PostData.swift
//  HackerNews
//
//  Created by Dad on 2020-05-19.
//  Copyright © 2020 Dad. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
