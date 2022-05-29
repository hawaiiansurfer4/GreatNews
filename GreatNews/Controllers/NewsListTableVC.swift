//
//  NewsListTableVC.swift
//  GreatNews
//
//  Created by Sean Murphy on 5/28/22.
//

import Foundation
import UIKit

class NewsListTableVC: UITableViewController {
    
    var webService = WebService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string:"https://newsapi.org/v2/top-headlines?country=us&apiKey=fffb9ff7d79d4b869b50526ae11e6d8f")!
        webService.getArticles(url: url) { _ in
            
        }
    }
}
