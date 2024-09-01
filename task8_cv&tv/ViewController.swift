//
//  ViewController.swift
//  task8_cv&tv
//
//  Created by Kenan Memmedov on 31.08.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            let nib = UINib(nibName: "CustomCategoryTableViewCell", bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: "CustomCategoryTableViewCell")
            let nib2 = UINib(nibName: "ShopCategoryTableViewCell", bundle: nil)
            tableView.register(nib2, forCellReuseIdentifier: "ShopCategoryTableViewCell")
            let nib3 = UINib(nibName: "ShopCategoryTableViewCell2", bundle: nil)
            tableView.register(nib3, forCellReuseIdentifier: "ShopCategoryTableViewCell2")
            let nib4 = UINib(nibName: "ProductTableViewCell", bundle: nil)
            tableView.register(nib4, forCellReuseIdentifier: "ProductTableViewCell")
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    func setup(){
        topView.layer.cornerRadius = 20
        topView.layer.borderWidth = 1
        let placeholderText = "Search for anything"
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.lightGray
        ]
        searchTextField.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: attributes)
        topView.layer.borderColor = UIColor.lightGray.cgColor
    }
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCategoryTableViewCell", for: indexPath)
            cell.backgroundColor = .clear
            return cell
        case 1:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "ShopCategoryTableViewCell", for: indexPath)
            cell2.backgroundColor = .clear
            return cell2
        case 2:
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "ShopCategoryTableViewCell2", for: indexPath)
            cell3.backgroundColor = .clear
            return cell3
        case 3:
            let cell4 = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath)
            return cell4
        default:
            let cell5 = UITableViewCell()
            return cell5
        }
    }
}


