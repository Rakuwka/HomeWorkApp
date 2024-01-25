//
//  GameVC.swift
//  HomeWorkApp
//
//  Created by Rakshanda Alaskarova on 26.01.24.
//

import UIKit

class GameVC: UIViewController {
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var playerName: UILabel!
    
    @IBOutlet weak var moneyTF: UILabel!
    
    @IBOutlet weak var numberOfQuestion: UILabel!
    
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var priceOfQuestion: UILabel!
    @IBOutlet weak var variant1Button: UIButton!
    @IBOutlet weak var variant2Button: UIButton!
    @IBOutlet weak var variant3Button: UIButton!
    @IBOutlet weak var variant4Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        [cancelButton, variant1Button, variant2Button, variant3Button, variant4Button].forEach { view in
            view.layer.cornerRadius = 8
        }
    }
    
    @IBAction func cancelTap(_ sender: UIButton) {
    }
    
    

}
