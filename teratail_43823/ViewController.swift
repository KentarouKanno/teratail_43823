//
//  ViewController.swift
//  teratail_43823
//
//  Created by KentarOu on 2016/08/09.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import UIKit


class ViewController: UIViewController,ZRScrollableTabBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initScrollableTabbar()
    }
    
    func initScrollableTabbar() {
        
        // Tab bar
        let item1 = UITabBarItem(tabBarSystemItem: .Bookmarks, tag: 1)
        let item2 = UITabBarItem(tabBarSystemItem: .Contacts, tag: 2)
        let item3 = UITabBarItem(tabBarSystemItem: .Downloads, tag: 3)
        let item4 = UITabBarItem(tabBarSystemItem: .Featured, tag: 4)
        let item5 = UITabBarItem(tabBarSystemItem: .Recents, tag: 5)
        let item6 = UITabBarItem(tabBarSystemItem: .TopRated, tag: 6)
        let item7 = UITabBarItem(tabBarSystemItem: .History, tag: 7)
        let item8 = UITabBarItem(tabBarSystemItem: .MostViewed, tag: 8)
        let item9 = UITabBarItem(tabBarSystemItem: .MostRecent, tag: 9)
        
        let tabBar = ZRScrollableTabBar(items: [item1, item2, item3, item4, item5, item6, item7, item8, item9])
        tabBar.scrollableTabBarDelegate = self
        view.addSubview(tabBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func scrollableTabBar(tabBar: ZRScrollableTabBar!, didSelectItemWithTag tag: Int32) {
        print(tag)
    }
}

