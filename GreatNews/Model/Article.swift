//
//  ArticleModel.swift
//  GreatNews
//
//  Created by Sean Murphy on 5/29/22.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
