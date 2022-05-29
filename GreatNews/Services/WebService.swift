//
//  WebService.swift
//  GreatNews
//
//  Created by Sean Murphy on 5/28/22.
//

import Foundation

class WebService {

    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, resp, error in
            guard error == nil else {
                completion(nil)
                return
            }

            if let safeData = data {
                do {
                    let decoder = JSONDecoder()
                    let articleList = try? decoder.decode(ArticleList.self, from: safeData)
                    
                    if let articleList = articleList {
                        completion(articleList.articles)
                    }

                } catch {
                    print("Error")
                }
            }
        }
        task.resume()
    }
}
