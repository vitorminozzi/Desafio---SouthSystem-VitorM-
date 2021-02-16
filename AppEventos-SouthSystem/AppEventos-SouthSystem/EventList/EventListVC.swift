//
//  EventListVC.swift
//  AppEventos-SouthSystem
//
//  Created by Vitor Gomes on 15/02/21.
//

import UIKit

class EventListVC: UIViewController {

    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var eventListTableView: UITableView!
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()

        
        self.eventListTableView.register(UINib(nibName: "EventListTableViewCell", bundle: nil), forCellReuseIdentifier: "EventListTableViewCell")
        self.eventListTableView.delegate = self
        self.eventListTableView.dataSource = self
        self.eventListTableView.rowHeight = 350
        
    
        
    }
    


}



extension EventListVC:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:EventListTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "EventListTableViewCell") as? EventListTableViewCell
        return cell ?? UITableViewCell()
    }
    
    
    
    
}
