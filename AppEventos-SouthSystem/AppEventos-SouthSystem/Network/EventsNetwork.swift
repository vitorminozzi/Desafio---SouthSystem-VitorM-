//
//  EventsNetwork.swift
//  AppEventos-SouthSystem
//
//  Created by Vitor Gomes on 15/02/21.
//

import Foundation


class EventsNetwork{
    
    typealias completion <T> = (_ result:T,_ failure:String?) -> Void
    
    
    
    func getEvents(completion: @escaping completion<Events?>) {
        
        let session: URLSession = URLSession.shared
        let url:URL? = URL(string: "http://5f5a8f24d44d640016169133.mockapi.io/api/events/")
        
        if let _url = url{
            
            let task:URLSessionTask = session.dataTask(with: _url) { (data, response, error) in
                
                do{
                    
                let eventList = try JSONDecoder().decode(Events.self, from: data ?? Data())
                    
                completion(eventList,nil)
                print(eventList)
                    
                }catch{
                    
                    completion(nil, "Deu ruim no request")
                }
                
            }
            
            task.resume()
        }
    
}

    
    
}
