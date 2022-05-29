//
//  ArticleModel.swift
//  GreatNews
//
//  Created by Sean Murphy on 5/29/22.
//

import Foundation

struct ArticleModel: Codable {
    let articles: [Articles]
}

struct Articles: Codable {
    let title: String
    let description: String
}
