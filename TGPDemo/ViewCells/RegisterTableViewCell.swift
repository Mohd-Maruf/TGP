//
//  RegisterTableViewCell.swift
//  TGPDemo
//
//  Created by Mohammad Maruf on 29/05/21.
//  Copyright © 2021 Mohammad Maruf. All rights reserved.
//

import UIKit

class RegisterTableViewCell: UITableViewCell {

    //MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    // MARK: Configuring cell layout
    func configureCell(data: (title: String, detail: String), indexPath: IndexPath) {
        titleLabel.text = data.title
        descriptionLabel.text = data.detail
        
    }
}
