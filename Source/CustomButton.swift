//
//  CustomButton.swift
//  CustomButtonSwift
//
//  Created by Vaibhav Upadhyay on 11/10/20.
//

import UIKit

public class CustomButton: UIButton {
    
    public required init(buttonConfig: ButtonConfig) {
        super.init(frame: CGRect(x: buttonConfig.xPosition, y: buttonConfig.yPosition, width: buttonConfig.width, height: buttonConfig.height))
        
        self.backgroundColor = #colorLiteral(red: 0.7578675176, green: 0.09817891725, blue: 0.6028279049, alpha: 1)
        self.isEnabled = buttonConfig.isEnable
        self.center.x = buttonConfig.xPosition
        self.center.y = buttonConfig.yPosition
        self.layer.cornerRadius = 5.0
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = 2.0
        self.titleLabel?.textColor = UIColor.white
        self.setTitle(buttonConfig.title.uppercased(), for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 17)
    }
    
    public init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
