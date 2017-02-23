//
//  LPFRootNavViewController.swift
//  LPFRootNav
//
//  Created by Roc on 2017/2/23.
//  Copyright © 2017年 Roc. All rights reserved.
//

import UIKit

enum LPFNavPopStyle {
    case LPFNavPopStyleDefault             //popViewController
    case LPFNavPopStylePopToRoot       //popToRootViewController
    case LPFNavPopStylePopToVC         //popToViewController
}

class LPFRootNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationBar()
    }

    func setupNavigationBar() {
        //设置title颜色字体
        let dic = [NSFontAttributeName:UIFont.systemFont(ofSize: 18.0),NSForegroundColorAttributeName:UIColor.red]
        self.navigationBar.titleTextAttributes = dic
        //bar背景颜色
        self.navigationBar.barTintColor = UIColor.yellow
    }
    
    
    func popConfigToVcWithPopStyle(viewController : UIViewController? ,   navPopStyle:LPFNavPopStyle ) {
        
        if self.viewControllers.count < 1 {
            return
        }
        
        switch navPopStyle {
            
        case .LPFNavPopStyleDefault:
            print("dd")
            if self.childViewControllers.count == 2 {
                //bar背景颜色
                self.navigationBar.barTintColor = UIColor.yellow
            } else {
                //bar背景颜色
                   self.navigationBar.barTintColor  = #colorLiteral(red: 0.9176470588, green: 0.2431372549, blue: 0.3098039216, alpha: 1)
            }
            
        case .LPFNavPopStylePopToVC:
            let rootVc = self.viewControllers.first;
            if viewController == rootVc {
                //bar背景颜色
                self.navigationBar.barTintColor  = UIColor.yellow
            } else {
                //bar背景颜色
                self.navigationBar.barTintColor = #colorLiteral(red: 0.9176470588, green: 0.2431372549, blue: 0.3098039216, alpha: 1)
            }
            
        case .LPFNavPopStylePopToRoot:
            //bar背景颜色
            self.navigationBar.barTintColor = UIColor.yellow
            
        }
        
    }
    
    /**
     * 在rootNav内统一重写：popViewController，popToRootViewController，popToViewController，实现自定义navbar颜色
     *
     */
    
    override func popViewController(animated: Bool) -> UIViewController? {
        
        self.popConfigToVcWithPopStyle(viewController: nil, navPopStyle: .LPFNavPopStyleDefault)
        
        return super.popViewController(animated: animated)
    }
    
    override func popToRootViewController(animated: Bool) -> [UIViewController]? {
        
        self.popConfigToVcWithPopStyle(viewController: nil, navPopStyle: .LPFNavPopStylePopToRoot)
        
        return super.popToRootViewController(animated: animated)
    }
    
    override func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]? {
        
        self.popConfigToVcWithPopStyle(viewController: viewController, navPopStyle: .LPFNavPopStylePopToVC)
        
        return super.popToViewController(viewController, animated: animated)
    }
    

    /**
     *  重写push方法的目的 : 拦截所有push进来的子控制器
     *
     *  @param viewController 刚刚push进来的子控制器
     */
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.childViewControllers.count > 0 {
                self.navigationBar.barTintColor  = #colorLiteral(red: 0.9176470588, green: 0.2431372549, blue: 0.3098039216, alpha: 1)
        } else {
                self.navigationBar.barTintColor  = UIColor.yellow
        }
        
        super.pushViewController(viewController, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
