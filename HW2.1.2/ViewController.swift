//
//  ViewController.swift
//  HW2.1.2
//
//  Created by Никита Шинов on 19.10.2021.
//

import UIKit
enum light {
    case red, yellow, green
}
class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var button: UIButton!
    
    var currentLight = light.red
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.layer.masksToBounds = true
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        yellowLight.layer.masksToBounds = true
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        greenLight.layer.masksToBounds = true
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        button.setTitle("START", for: .normal)
        
    }

    @IBAction func buttonPressed() {

        switch currentLight {
        case .red:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            yellowLight.alpha = 0.3
            currentLight = .yellow
            button.setTitle("NEXT", for: .normal)
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
            currentLight = .green
        case .green:
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            currentLight = .red
        }
      
    }
    
}

