//
//  APIService.swift
//  Phunware App
//
//  Created by Computer on 12/17/21.
//

import Foundation

class APIService : NSObject {
    
    private let sourceURL = URL(string: "https://raw.githubusercontent.com/phunware-services/dev-interview-homework/master/feed.json")!
    
    func apiToGetStarWarsData(completion: @escaping ([StarwarsEvents]) -> ()) {
        URLSession.shared.dataTask(with: sourceURL) { (data, urlResponse, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let swData = try! jsonDecoder.decode([StarwarsEvents].self, from:data)
                completion(swData)
            }
        }.resume()
        
    }
}
