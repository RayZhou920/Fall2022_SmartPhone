//
//  ViewController.swift
//  MyFavouriteFood
//
//  Created by mac on 9/23/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableVie: UITableView!
    
    let contacts = ["Cooked Fish", "Gongbao JiDing", "Chou Doufu", "Tai Milk", "Coconut Tea", "Boba Tea"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // test the commit
        tableVie.delegate = self
        tableVie.dataSource = self
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row]
        return cell;
    }
}

