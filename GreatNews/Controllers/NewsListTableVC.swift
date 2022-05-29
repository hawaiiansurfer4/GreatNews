//
//  NewsListTableVC.swift
//  GreatNews
//
//  Created by Sean Murphy on 5/28/22.
//

import Foundation
import UIKit

class NewsListTableVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    private func setUp() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
