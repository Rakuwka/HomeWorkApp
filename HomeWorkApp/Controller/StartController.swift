//
//  StartController.swift
//  HomeWorkApp
//
//  Created by Rakshanda Alaskarova on 24.01.24.
//

import UIKit

class StartController: UIViewController {
    @IBOutlet weak var playerNameTF: UITextField!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI() {
        [playerNameTF, startButton].forEach { view in
            view.layer.cornerRadius = 8
        }
        
        playerNameTF.leftView = UIView(frame: .init(x: 0, y: 0, width: 12, height: 0))
        playerNameTF.leftViewMode = .always
        
        addTapToHideKB()
    }

    
    @IBAction func startTap(_ sender: UIButton) {
        guard var name = playerNameTF.text else { return }
        // Если имя игрока не введено, игрока зовут Игрок
        if name.isEmpty {
            name = "Игрок"
        }
        print("\(name) начинает игру!")
        
        performSegue(withIdentifier: "toGameVC", sender: sender)
    }
    
}

