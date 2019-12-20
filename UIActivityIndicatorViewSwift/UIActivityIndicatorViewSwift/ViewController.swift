//
//  ViewController.swift
//  UIActivityIndicatorViewSwift
//
//  Created by ChuangLan on 2019/12/13.
//  Copyright © 2019 QuentinZang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.indicatorView.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 5,execute:  {
            self.indicatorView.stopAnimating()
        })
    }

    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    
}

