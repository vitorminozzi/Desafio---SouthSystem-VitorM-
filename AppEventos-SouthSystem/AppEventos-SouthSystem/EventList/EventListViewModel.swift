//
//  EventListViewModel.swift
//  AppEventos-SouthSystem
//
//  Created by Vitor Gomes on 17/02/21.
//

import Foundation


class EventListViewModel{
    
    
    let network:EventsNetwork = EventsNetwork()
    var myEventList:[Events]?
    
    
    
    func getMyList(){
        
        network.getData { (events) in
            
            self.myEventList = events
        }
    }
    
    
    func listTitle(index: Int) -> String{
        
        
        return self.myEventList?[index].title ?? ""
        
    }
    
    }
    
    
    
    
    

