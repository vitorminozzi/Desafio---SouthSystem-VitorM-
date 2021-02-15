//
//  Events.swift
//  AppEventos-SouthSystem
//
//  Created by Vitor Gomes on 15/02/21.
//

import Foundation



class Events: Codable {
    
    var people:[String]
    var date:String
    var description:String
    var image:String
    var longitude:String
    var latitude:String
    var price:String
    var title:String
    var id:String
    
    
    init(people:[String], date:String, description:String,image:String,longitude:String,latitude:String,price:String,title:String,id:String){
        
        self.people = people
        self.date = date
        self.description = description
        self.image = image
        self.longitude = longitude
        self.latitude = latitude
        self.price = price
        self.title = title
        self.id = id
    }
    
    
    
    
    
}



