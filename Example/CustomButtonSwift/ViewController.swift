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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttonConfig = ButtonConfig(
            isEnable: true,
            title: "MyCustomButton",
            xPosition: self.view.center.x,
            yPosition: self.view.center.y,
            height: 100,
            width: 300)
        let button = CustomButton().applyGlobalButtonTheme(buttonConfig: buttonConfig)
        view.addSubview(button)
    }

}

