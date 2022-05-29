//
//  WebService.swift
//  GreatNews
//
//  Created by Sean Murphy on 5/28/22.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, completion: @escaping ([Articles]?) -> ()) {
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, resp, error in
            guard error == nil else {
                completion(nil)
                return
            }
            
            if let safeData = data {
                do {
                    let decoder = JSONDecoder()
                    let response = try decoder.decode(ArticleModel.self, from: safeData)
                    completion(response.articles)
                } catch {
                    fatalError()
                }
            }
        }
        task.resume()
    }
}
