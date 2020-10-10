//
//  ViewController.swift
//  CustomButtonSwift
//
//  Created by infinityvaibhav on 10/11/2020.
//  Copyright (c) 2020 infinityvaibhav. All rights reserved.
//

import UIKit
import CustomButtonSwift

class ViewController: UIViewController {
    
    var button: CustomButton = CustomButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttonConfig = ButtonConfig(
            isEnable: true,
            title: "MyCustomButton",
            xPosition: self.view.center.x,
            yPosition: self.view.center.y,
            height: 100,
            width: 300)
        button = CustomButton(buttonConfig: buttonConfig)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(self.buttonClick), for: .touchUpInside)

    }

    @objc func buttonClick() {
        print("click")
    }
}

