//
//  DetailsViewController.swift
//  homework
//
//  Created by Алсу Хайруллина on 02.07.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var vkLabel: UILabel!
    @IBOutlet weak var telegramLabel: UILabel!
    
    var contact: ContactCellData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = contact?.image
        numberLabel.text = contact?.phone
        vkLabel.text = contact?.vk
        telegramLabel.text = contact?.telegram

    }
    
}
