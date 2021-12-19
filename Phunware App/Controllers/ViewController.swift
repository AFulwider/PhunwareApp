//
//  ViewController.swift
//  Phunware App
//
//  Created by Computer on 12/17/21.
//

import UIKit

class ViewController: UIViewController {
    private var starwarsEventViewModel : StarwarsEventViewModel!
    
    let starWarsTableView = UITableView()
    private var dataSource : StarWarsTableViewDataSource<StarWarsTableViewCells,EventData>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate() {
        self.starwarsEventViewModel = StarwarsEventViewModel()
        self.starwarsEventViewModel.bindStarWarsViewModelToController = {
            self.updateDataSource()
        }
    }
    
    func updateDataSource(){
        self.dataSource = StarWarsTableViewDataSource(cellIdentifier: "StarWarsTableViewCell", items: self.starwarsEventViewModel.swData.data, configureCell: { (cell, swvm) in
//            cell.employeeIdLabel.text = swvm.id
//            cell.employeeNameLabel.text = evm.employeeName
//            print("StarWars Event ID: \(swvm.id)")
        })
        
        DispatchQueue.main.async {
            self.starWarsTableView.dataSource = self.dataSource
            self.starWarsTableView.reloadData()
        }
    }
}

