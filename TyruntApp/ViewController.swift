//
//  ViewController.swift
//  TyruntApp
//
//  Created by Charlton Smith on 9/23/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchBar.delegate = self
        searchBar.showsScopeBar = true
    }

    @IBOutlet weak var iTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var toolbar: UIToolbar!
    
    
    var service = TyruntService()
    var responseArray = [Torrent]()
    
    func callAPI(query: String){
        service.search(query, dict: nil) { (data) in
            if let torrents = data?.data {
                self.responseArray = torrents
                self.iTableView.reloadData()
            }
        }
    }
    
}

extension ViewController: UIToolbarDelegate {
    
    
    
}

extension ViewController: UISearchBarDelegate {
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.callAPI(query: searchText)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return responseArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! TyruntViewCell
        
        let torrent = self.responseArray[indexPath.row]
        cell.setItem(torrent: torrent)
        return cell
    }
    
}
