//
//  FirstViewController.swift
//  MemoryLeak
//
//  Created by Zafar on 2/12/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }

    @objc func buttonTapped() {
        self.navigationController?
            .pushViewController(LeakingViewController(), animated: true)
    }
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle(" Navigate ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.layer.borderWidth = 0.5
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
}

