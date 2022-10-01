//
//  ViewController.swift
//  FoodImage
//
//  Created by mac on 9/24/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tblView: UITableView!
    let foodNames = ["Burger", "Salad", "Taco", "Sushi", "Porridge"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblView.delegate = self;
        tblView.dataSource = self;
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = foodNames[indexPath.row];
        return cell;
    }
}

