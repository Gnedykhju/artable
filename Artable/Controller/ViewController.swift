//
//  ViewController.swift
//  Artable
//
//  Created by User on 31/08/2019.
//  Copyright © 2019 Yulia Gnedykh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func viewDidAppear(_ animated: Bool) {
        
        let storyboard = UIStoryboard(name: "LoginStoryboard", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "loginVC")
        present(controller, animated: true)
        
    }
}

