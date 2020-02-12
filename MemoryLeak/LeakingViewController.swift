//
//  LeakingViewController.swift
//  MemoryLeak
//
//  Created by Zafar on 2/12/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

class LeakingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(titleLabel)
        
        titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        viewComponent = ViewComponent(parent: self)
    }
    
    var viewComponent: ViewComponent!
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Leaking view controller"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        label.textColor = .darkGray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}
