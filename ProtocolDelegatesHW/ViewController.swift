//
//  ViewController.swift
//  ProtocolDelegatesHW
//
//  Created by Allen-Jasmin Farcas on 25/11/2018.
//  Copyright © 2018 Allen-Jasmin Farcas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableview: UITableView!
    let dataArray = ["bird", "dog", "cat", "turtle", "bear"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableview.delegate = self
        myTableview.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the data for this row
        let rowData = dataArray[indexPath.row]
        // Get a cell to display
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        cell.textLabel?.text = rowData
        // Return the cell
        return cell
    }
    
}

