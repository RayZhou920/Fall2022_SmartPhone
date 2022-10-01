//
//  ViewController.swift
//  Tourist
//
//  Created by mac on 10/1/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    let locationNames = ["Great Wall", "Taj Mahal", "Mount Rushmore", "Tower of London", "Forbidden City"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationNames.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let cell = Bundle.main.loadNibNamed("LocationTableViewCell", owner: self)?.first as! LocationTableViewCell
        
        cell.imgLocation.image = UIImage(named: locationNames[indexPath.row])
        cell.lblLocation.text = locationNames[indexPath.row]
        
        // cell.textLabel?.text = locationNames[indexPath.row]
        return cell;
    }
}

