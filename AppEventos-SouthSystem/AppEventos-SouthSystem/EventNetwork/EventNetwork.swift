//
//  EventNetwork.swift
//  AppEventos-SouthSystem
//
//  Created by Vitor Gomes on 17/02/21.
//

import Foundation


class EventsNetwork{
    
    
         func getData(completionHandler: @escaping (Events) -> Void){
                    
        let url: URL = URL(string: "http://5f5a8f24d44d640016169133.mockapi.io/api/events/1")!
        
        let task: Void = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else{ return }
          
            do {
                let events = try JSONDecoder().decode(Events.self, from: data)
                completionHandler(events)
            }
            catch{
                
                print ("Deu ruim no decode \(error.localizedDescription)")
            }
        }.resume()
        }
            
            
        }
        
    


    
    




//{"people":[],
//"date":1534784400,
//"description":"O Patas Dadas estará na Redenção, nesse domingo, com cães para adoção e produtos à venda!\n\nNa ocasião, teremos bottons, bloquinhos e camisetas!\n\nTraga seu Pet, os amigos e o chima, e venha aproveitar esse dia de sol com a gente e com alguns de nossos peludinhos - que estarão prontinhos para ganhar o ♥ de um humano bem legal pra chamar de seu. \n\nAceitaremos todos os tipos de doação:\n- guias e coleiras em bom estado\n- ração (as que mais precisamos no momento são sênior e filhote)\n- roupinhas \n- cobertas \n- remédios dentro do prazo de validade",
//"image":"http://lproweb.procempa.com.br/pmpa/prefpoa/seda_news/usu_img/Papel%20de%20Parede.png",
//"longitude":-51.2146267,
//"latitude":-30.0392981,
//"price":29.99,
//"title":"Feira de adoção de animais na Redenção","id":"1"}
