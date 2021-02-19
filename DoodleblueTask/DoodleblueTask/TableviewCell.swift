//
//  TableviewCell.swift
//  DoodleblueTask
//
//  Created by Chennakesavulu on 18/02/21.
//  Copyright © 2021 Chennakesavulu. All rights reserved.
//

import UIKit

class TableviewCell: UITableViewCell {

    @IBOutlet var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
