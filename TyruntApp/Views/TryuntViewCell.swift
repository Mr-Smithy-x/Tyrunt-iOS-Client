//
//  TryuntViewCell.swift
//  TyruntApp
//
//  Created by Charlton Smith on 9/29/20.
//  Copyright © 2020 Charlton Smith. All rights reserved.
//

import Foundation
import UIKit

class TyruntViewCell: UITableViewCell {
    
    @IBOutlet weak var iImageView: UIImageView!
    @IBOutlet weak var iTitleField: UILabel!
    @IBOutlet weak var iSubtitleField: UILabel!

    func setItem(torrent: Torrent){
        self.iTitleField.text = torrent.title
        self.iSubtitleField.text = torrent.summary
        if let url = URL(string: torrent.mediumCoverImage) {
            self.iImageView.load(url: url)
        }
        
    }
    
}
