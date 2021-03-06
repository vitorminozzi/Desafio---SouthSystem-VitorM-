//
//  EventListTableViewCell.swift
//  AppEventos-SouthSystem
//
//  Created by Vitor Gomes on 15/02/21.
//

import UIKit


protocol EventListCellProtocol: class{
    
    func tappedButton()
    
    
}

class EventListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var moreInfoButton: UIButton!
    weak var delegate:EventListCellProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupCellButton(delegate:EventListCellProtocol?){
        
        self.delegate = delegate
        
    }
    @IBAction func moreInfo(_ sender: Any) {
    
        self.delegate?.tappedButton()
       
    }
    

}

