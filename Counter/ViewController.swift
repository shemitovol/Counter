//
//  ViewController.swift
//  Counter
//
//  Created by Олег Сергеевич on 20.11.2025.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak private var counterValue: UILabel!
    @IBOutlet weak private var updateBotton: UIButton!
    @IBOutlet weak private var plusButton: UIButton!
    @IBOutlet weak private var minusButton: UIButton!
    @IBOutlet weak private var historyOfChanges: UITextView!
    
    private var value: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func dateFormatter() -> String {
        let dateFormatter = DateFormatter ()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let dateNow = dateFormatter.string(from: Date())
        return dateNow
    }
    
    private func changeCounterText() {
        counterValue.text = "Значение счетчика: \(value)"
    }
    
    private func historyChange(_ change: String) {
        historyOfChanges.text.append("\n \(dateFormatter()): \(change)")
    }
    
    @IBAction private func increaseCounter(_ sender: Any) {
        if value == Int.max {
            historyChange("попытка увеличить максимальное значение счетчика")
        } else {
            value += 1
            changeCounterText()
            historyChange("значение изменено на +1")
        }
    }
    
    @IBAction private func reduceCounter(_ sender: Any) {
        if value > 0 {
            value -= 1
            changeCounterText()
            historyChange("начение изменено на -1")
        } else {
            historyChange("попытка уменьшить значение счётчика ниже 0")
        }
    }
    
    @IBAction private func updateCounterValue(_ sender: Any) {
        value = 0
        changeCounterText()
        historyChange("значение сброшено")
    }
    
}

