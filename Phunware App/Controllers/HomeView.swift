//
//  HomeView.swift
//  Phunware App
//
//  Created by Computer on 12/17/21.
//

import UIKit

class HomeView : UIViewController {
    
    private var starwarsEventViewModel : StarwarsEventViewModel!
    
    
    private var dataSource : StarWarsTableViewDataSource<StarWarsTableViewCells,StarwarsEvents>!

    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate() {
        self.starwarsEventViewModel = StarwarsEventViewModel()
    }
}
