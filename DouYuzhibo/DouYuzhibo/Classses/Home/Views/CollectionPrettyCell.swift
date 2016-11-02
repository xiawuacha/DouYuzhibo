//
//  CollectionPrettyCell.swift
//  DouYuzhibo
//
//  Created by 汪凯 on 2016/11/2.
//  Copyright © 2016年 汪凯. All rights reserved.
//

import UIKit
import Kingfisher
class CollectionPrettyCell: UICollectionViewCell {

    @IBOutlet weak var anchorLoactionBtn: UIButton!
    @IBOutlet weak var onlinecountBtn: UIButton!
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var anchorBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK:- 定义模型属性
     var anchor : AnchorModel? {
        didSet {
            
            // 0.校验模型是否有值
            guard let anchor = anchor else { return }
            
            // 1.所在的城市
            anchorLoactionBtn.setTitle(anchor.anchor_city, for: UIControlState())
            // 2.取出在线人数显示的文字
            var onlineStr : String = ""
            if anchor.online >= 10000 {
                onlineStr = "\(Int(anchor.online / 10000))万在线"
            } else {
                onlineStr = "\(anchor.online)在线"
            }
            onlinecountBtn.setTitle(onlineStr, for: UIControlState())
            
            // 3.设置封面图片
            guard let iconURL = URL(string: anchor.vertical_src) else { return }
            backImage.kf.setImage(with: iconURL)
            
            //4:主播昵称
            // 2.昵称的显示
            anchorBtn.setTitle(anchor.nickname, for: .normal)
            
        }
    }

}
