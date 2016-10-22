//
//  HomeViewController.swift
//  DouYuzhibo
//
//  Created by 汪凯 on 16/10/22.
//  Copyright © 2016年 汪凯. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //设置ui
        setupUI()
    }
 
}


//MARK:设置UI界面
extension HomeViewController {
     func setupUI() {
      //1:设置导航栏
        setupNavationBar()
    }

    
    private func setupNavationBar() {
        //1;设置左侧的item
//        let btn  = UIButton()
//        btn.setImage(UIImage(named:"logo"), for: .normal)
//        btn.sizeToFit()
//        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView:btn)
        navigationItem.leftBarButtonItem  = UIBarButtonItem(imageName: "logo")
        
        //2:s设置右边的item
        
        let size = CGSize(width: 40, height: 40)
//        let historyBtn = UIButton()
//        historyBtn.setImage(UIImage(named:"image_my_history"), for: .normal)
//        historyBtn.setImage(UIImage(named:"image_my_history_click"), for: .highlighted)
//        historyBtn.frame = CGRect(origin: CGPoint.zero, size: size)
//        let  historyItem = UIBarButtonItem(customView:historyBtn)
//        
        
         let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        
//        let searchBtn = UIButton()
//        searchBtn.setImage(UIImage(named:"btn_search"), for: .normal)
//        searchBtn.setImage(UIImage(named:"btn_search_clikced"), for: .highlighted)
//        searchBtn.frame = CGRect(origin: CGPoint.zero, size: size)
//        let   searchItem  = UIBarButtonItem(customView:searchBtn)
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        
//        let qcodeBtn = UIButton()
//        qcodeBtn.setImage(UIImage(named:"Image_scan"), for: .normal)
//        qcodeBtn.setImage(UIImage(named:"Image_scan_click"), for: .highlighted)
//        qcodeBtn.frame = CGRect(origin: CGPoint.zero, size: size)
//        let   qcodeItem  = UIBarButtonItem(customView:qcodeBtn)
         let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        

        
        navigationItem.rightBarButtonItems = [searchItem,qrcodeItem,historyItem]
        
    }
    
}
