//
//  ViewController.swift
//  Counter
//
//  Created by Олег Сергеевич on 20.11.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterValue: UILabel!
    
    @IBOutlet weak var plusButton: UIButton!
    
    var value: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func increaseCounter(_ sender: Any) {
        value += 1
        counterValue.text = "Значение счетчика: \(value)"
    }
    
}

