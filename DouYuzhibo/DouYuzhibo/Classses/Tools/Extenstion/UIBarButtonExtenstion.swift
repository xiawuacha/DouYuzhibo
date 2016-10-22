//
//  UIBarButtonExtenstion.swift
//  DouYuzhibo
//
//  Created by 汪凯 on 16/10/22.
//  Copyright © 2016年 汪凯. All rights reserved.
//备注  :swift 在添加分类方法时候 不建议我们重新写分类方法   而是建议我们创建构造函数

import UIKit

extension UIBarButtonItem {

    /*备注  :swift 在添加分类方法时候 不建议我们重新写分类方法   而是建议我们创建构造函数
    class func createItem(imageName:String, highImageName:String,size:CGSize)->UIBarButtonItem {
      let btn = UIButton()
        
        btn.setImage(UIImage(named:imageName), for: .normal)
        btn.setImage(UIImage(named:highImageName), for: .highlighted)
        
        btn.frame = CGRect(origin: CGPointZero, size: size)
        
        return UIBarButtonItem(customView: btn)
    
    }
 */
    
    // 便利构造函数: 1> convenience开头 2> 在构造函数中必须明确调用一个设计的构造函数(self)
    convenience init(imageName : String, highImageName : String = "", size : CGSize = CGSize.zero)  {
        // 1.创建UIButton
        let btn = UIButton()
        
        // 2.设置btn的图片
        btn.setImage(UIImage(named: imageName), for: UIControlState())
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        
        // 3.设置btn的尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        // 4.创建UIBarButtonItem
        self.init(customView : btn)
    }

    

}
