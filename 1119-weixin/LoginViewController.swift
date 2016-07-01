//
//  LoginViewController.swift
//  1119-weixin
//
//  Created by Alonso Zhang on 15/11/20.
//  Copyright © 2015年 Alonso Zhang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var antologinSwitch: UISwitch!
    @IBOutlet weak var userTF: UITextField!
    @IBOutlet weak var pswTF: UITextField!
    @IBOutlet weak var severTF: UITextField!
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    //需要登录
    var requireLogin = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //按done时将三个框的内容保存
        if sender as! NSObject == self.doneButton{
            NSUserDefaults.standardUserDefaults().setObject(userTF.text, forKey: "weixinID")
            NSUserDefaults.standardUserDefaults().setObject(pswTF.text, forKey: "weixinPsw")
            NSUserDefaults.standardUserDefaults().setObject(severTF.text, forKey: "weixinSever")
            
            //配置自动登录
            NSUserDefaults.standardUserDefaults().setBool(self.antologinSwitch.on, forKey: "wxautologin")
            
            //同步用户配置
            NSUserDefaults.standardUserDefaults().synchronize()
            
            //需要登录
            requireLogin = true
        }
    }
}
