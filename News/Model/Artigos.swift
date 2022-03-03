//
//  Artigos.swift
//  News
//
//  Created by Henrique Marques on 28/02/22.
//

import Foundation

struct Article: Decodable {
    let title: String
    let description: String
}

struct ArcticleList: Decodable {
    let articles: [Article]
}

