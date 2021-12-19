//
//  StarwarsEventData.swift
//  Phunware App
//
//  Created by Computer on 12/17/21.
//

import Foundation

struct StarwarsEvents : Decodable {
//    let status : String
    let data : [EventData]
}

struct EventData: Decodable {
    let id: Int?
    let title: String?
    let timestamp: String?
    let image: String?
    let phone: String?
    let date: String?
    let locationline1: String?
    let locationline2 : String?
}
