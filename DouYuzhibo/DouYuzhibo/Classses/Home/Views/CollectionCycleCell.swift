//
//  CollectionCycleCell.swift
//  DouYuzhibo
//
//  Created by 汪凯 on 2016/11/2.
//  Copyright © 2016年 汪凯. All rights reserved.
//

import UIKit
import Kingfisher
class CollectionCycleCell: UICollectionViewCell {
//iconImageView titleLabel
    // MARK: 控件属性

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    
    // MARK: 定义模型属性
    var cycleModel : CycleModel? {
        didSet {
            titleLabel.text = cycleModel?.title
            let iconURL = URL(string: cycleModel?.pic_url ?? "")!
            iconImage.kf.setImage(with: iconURL, placeholder: UIImage(named: "Img_default"))
        }
    }
}
