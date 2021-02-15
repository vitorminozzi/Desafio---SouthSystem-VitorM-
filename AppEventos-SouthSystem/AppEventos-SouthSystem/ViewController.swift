//
//  ViewController.swift
//  AppEventos-SouthSystem
//
//  Created by Vitor Gomes on 15/02/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    let network:EventsNetwork = EventsNetwork()
    var myEvents:[Events] = []
    
   override func viewDidLoad() {
        
        
    network.getEvents { (success, error) in
        
        if let _success = success{
            
            self.myEvents.append(_success)
            
        }else{
            
            print("deu ruim")
        }

    }
        print(myEvents)
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

