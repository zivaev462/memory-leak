//
//  ViewComponent.swift
//  MemoryLeak
//
//  Created by Zafar on 2/12/20.
//  Copyright © 2020 Zafar. All rights reserved.
//

import UIKit

class ViewComponent {
    
    init(parent: UIViewController) {
        self.parent = parent
    }
    
    var parent: UIViewController
}
