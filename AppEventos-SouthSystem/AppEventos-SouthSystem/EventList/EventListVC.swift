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
   
    let model:EventListViewModel = EventListViewModel()
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        
        model.getMyList()
        self.setupTableView()
        
    }
    
    
    
    func setupTableView(){
        
        self.eventListTableView.register(UINib(nibName: "EventListTableViewCell", bundle: nil), forCellReuseIdentifier: "EventListTableViewCell")
        self.eventListTableView.delegate = self
        self.eventListTableView.dataSource = self
        self.eventListTableView.rowHeight = 350
    }
    
    
}




//  EXTENSIONS

extension EventListVC:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:EventListTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "EventListTableViewCell") as? EventListTableViewCell
        
        cell?.setupCellButton(delegate: self)
        cell?.titleLabel.text = model.listTitle(index: indexPath.row)
        
        
        return cell ?? UITableViewCell()
    }
    
}

extension EventListVC: EventListCellProtocol {
    func tappedButton() {
        
        print("tap")
        
    }
    
    }

