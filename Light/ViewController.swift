//
//  ViewController.swift
//  Light
//
//  Created by Abraham Guerrero on 5/7/24.
//

import UIKit

class ViewController: UIViewController {

    var isLightMode: Bool = true
    
    @IBOutlet var currentView: UIView!
    @IBOutlet var switchButton: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        // Change mode
        isLightMode.toggle()
        handleLightModeChange()
    }
    
    func handleLightModeChange() {
        if isLightMode {
            currentView.backgroundColor = .white
            switchButton.backgroundColor = .black
            switchButton.tintColor = .white
            switchButton.setTitle("Dark", for: UIControl.State.normal)
        } else {
            currentView.backgroundColor = .black
            switchButton.backgroundColor = .white
            switchButton.tintColor = .black
            switchButton.setTitle("Light", for: UIControl.State.normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        handleLightModeChange()
        switchButton.layer.cornerRadius = 10
    }

}

