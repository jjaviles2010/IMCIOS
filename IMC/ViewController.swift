//
//  ViewController.swift
//  IMC
//
//  Created by Jose Javier on 10/08/19.
//  Copyright © 2019 JLApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var tfWeight: UITextField!
    
    @IBOutlet weak var tfHeight: UITextField!
    
    @IBOutlet weak var scGender: UISegmentedControl!
    
    @IBOutlet weak var btCalculate: UIButton!
    
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfHeight.layer.cornerRadius = 8
        tfWeight.layer.cornerRadius = 8
        btCalculate.layer.cornerRadius = 15
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }


}

