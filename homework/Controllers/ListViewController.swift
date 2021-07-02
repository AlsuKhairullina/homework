//
//  ListViewController.swift
//  homework
//
//  Created by Алсу Хайруллина on 02.07.2021.
//

import UIKit

class ListViewController: UIViewController {
     
    @IBOutlet weak var tableView: UITableView!
    
    var data: [ContactCellData] = [ContactCellData(name: "Alsu", phone: "89964014208", vk: "@etozhealsu", telegram: "@etozhealsu", image: UIImage(systemName: "person.crop.rectangle.fill") ?? UIImage() ),
                                   ContactCellData(name: "Olya", phone: "89761002345", vk: "@olyaolya", telegram: "olyaB", image: UIImage(systemName: "person.crop.rectangle.fill") ?? UIImage())]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
}

extension ListViewController:UITableViewDelegate {
    func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let contactViewController = storyboard?.instantiateViewController(identifier: "DetailsViewController") as? DetailsViewController else { return }
        
        contactViewController.contact = data[indexPath.row]
        navigationController?.pushViewController(contactViewController, animated: true)
    }
}

extension ListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? ContactTableViewCell  else {return UITableViewCell() }
        cell.setData(contact: data[indexPath.row])
        return cell
    }
}

struct ContactCellData {
    let name: String
    var phone: String
    var vk: String?
    var telegram: String?
    var image: UIImage?
}

