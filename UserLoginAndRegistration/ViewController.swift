//
//  ViewController.swift
//  UserLoginAndRegistration
//
//  Created by 佐藤恒 on 2019/01/19.
//  Copyright © 2019年 佐藤恒. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "loginView", sender: self)
    }

}

