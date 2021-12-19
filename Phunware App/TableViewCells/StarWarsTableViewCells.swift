//
//  StarWarsTableViewCells.swift
//  Phunware App
//
//  Created by Computer on 12/17/21.
//

import Foundation
import UIKit

class StarWarsTableViewCells: UITableViewCell {
    
    var swData : StarwarsEvents?
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        id, title, timestamp, image, phone, date, locationline1, locationline2
        print("********************** PAGE BREAK **********************/n/n/n")
        print(swData?.data)
        print("********************** PAGE BREAK **********************/n/n/n")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
