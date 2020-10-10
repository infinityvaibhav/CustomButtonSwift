//
//  CustomButton.swift
//  CustomButtonSwift
//
//  Created by Vaibhav Upadhyay on 11/10/20.
//

import UIKit

public class CustomButton {
    
    public init() {}
    
    public func applyGlobalButtonTheme(buttonConfig: ButtonConfig) -> UIButton {
        let button = UIButton(frame: CGRect(x: buttonConfig.xPosition, y: buttonConfig.yPosition, width: buttonConfig.width, height: buttonConfig.height))
        
        button.backgroundColor = #colorLiteral(red: 0.7578675176, green: 0.09817891725, blue: 0.6028279049, alpha: 1)
        button.isEnabled = buttonConfig.isEnable
        button.center.x = buttonConfig.xPosition
        button.center.y = buttonConfig.yPosition
        button.layer.cornerRadius = 5.0
        button.layer.borderColor = UIColor.clear.cgColor
        button.layer.borderWidth = 2.0
        button.titleLabel?.textColor = UIColor.white
        button.setTitle(buttonConfig.title.uppercased(), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        return button
    }
}

public struct ButtonConfig {
    var isEnable: Bool
    var title: String
    var xPosition: CGFloat
    var yPosition: CGFloat
    var height: CGFloat
    var width: CGFloat
    
    public init(
        isEnable: Bool = true,
        title: String = "",
        xPosition: CGFloat = UIScreen.main.bounds.width/2,
        yPosition: CGFloat = UIScreen.main.bounds.height/2,
        height: CGFloat = 300,
        width: CGFloat = 80) {
        
        self.isEnable = isEnable
        self.title = title
        self.xPosition = xPosition
        self.yPosition = yPosition
        self.height = height
        self.width = width
        
    }

}
