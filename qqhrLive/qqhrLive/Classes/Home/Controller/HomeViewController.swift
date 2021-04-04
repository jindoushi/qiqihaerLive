//
//  HomeViewController.swift
//  qqhrLive
//
//  Created by 金斗石 on 2021/4/4.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //设置UI界面
        setupUI()
    }
    

}

// MARK:　UI界面设置
extension HomeViewController {
    private func setupUI(){
        //1. 设置导航栏
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        //设置左侧的iteam
        /* //普通创建
        let btn = UIButton()
        btn.setImage(UIImage(named: "launcher_logo_2020"), for: .normal)
        btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        */
        //使用构造函数来创建
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "launcher_logo_2020")
           
        //设置右侧的iteam
        //设置size否则间距过小
        let size = CGSize(width: 40, height: 40)
        /*
        //在UIBarButtionItem-Extension 中扩充类来实现btn的描写
        let historyIteam = UIBarButtonItem.createItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        
        let searchIteam = UIBarButtonItem.createItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        
        let qrcodeIteam = UIBarButtonItem.createItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        */
        
        //使用构造函数来实现⬆️
        let historyIteam = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchIteam = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeIteam = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyIteam,searchIteam,qrcodeIteam]
    
    }
}
