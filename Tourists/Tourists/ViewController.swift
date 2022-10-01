//
//  ViewController.swift
//  Tourists
//
//  Created by mac on 10/1/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    let locations = ["Great_Wall", "Taj_Mahal", "Forbidden_City", "Mount_Rushmore", "London_Tower"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let cell = Bundle.main.loadNibNamed("LocationTableViewCell", owner: self)?.first as! LocationTableViewCell
        
        cell.imgLocation.image = UIImage(named: locations[indexPath.row]);
        
        cell.lblLocation.text = locations[indexPath.row];
        
        return cell;
    }
    
}

