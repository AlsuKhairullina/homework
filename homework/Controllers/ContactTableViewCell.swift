//
//  ContactTableViewCell.swift
//  homework
//
//  Created by Алсу Хайруллина on 02.07.2021.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func setData (contact: ContactCellData) {
        nameLabel.text = contact.name
    }

    
}
