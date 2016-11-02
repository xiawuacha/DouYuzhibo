//
//  CollectionNormalCell.swift
//  DouYuzhibo
//
//  Created by 汪凯 on 2016/11/2.
//  Copyright © 2016年 汪凯. All rights reserved.
//

import UIKit
import Kingfisher
class CollectionNormalCell: UICollectionViewCell {

    //:MARK 属性
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var anchorNameBtn: UIButton!
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var countBtn: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK:- 定义模型属性
     var anchor : AnchorModel? {
        didSet {
            // 0.校验模型是否有值
            guard let anchor = anchor else { return }
            
            // 2.房间名称
            titleLabel.text = anchor.room_name
            anchorNameBtn.setTitle(anchor.nickname, for: .normal)
            
            // 1.取出在线人数显示的文字
            var onlineStr : String = ""
            if anchor.online >= 10000 {
                onlineStr = "\(Int(anchor.online) / 10000)万"
            } else {
                onlineStr = "\(anchor.online)在线"
            }
            countBtn.setTitle(onlineStr, for: UIControlState())
            
            // 3.设置封面图片
            guard let iconURL = URL(string: anchor.vertical_src) else { return }
            image.kf.setImage(with: iconURL)
            
        }
    }

}
