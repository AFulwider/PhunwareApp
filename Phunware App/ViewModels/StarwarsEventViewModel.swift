//
//  StarwarsEventViewModel.swift
//  Phunware App
//
//  Created by Computer on 12/17/21.
//

import Foundation

class StarwarsEventViewModel : NSObject {
    private var apiService : APIService!
    
    private(set) var swData: StarwarsEvents! {
        didSet {
            self.bindStarWarsViewModelToController()
        }
    }
    var bindStarWarsViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService = APIService()
        callFuncToGetData()
    }
    
    func callFuncToGetData() {
        self.apiService.apiToGetStarWarsData { (starWarsData) in
            print(starWarsData)
        }
    }
}
