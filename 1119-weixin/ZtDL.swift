//
//  ZtDL.swift
//  1119-weixin
//
//  Created by Alonso Zhang on 15/11/20.
//  Copyright © 2015年 Alonso Zhang. All rights reserved.
//

import Foundation

//状态代理协议
protocol ZtDL{
    func isOn(zt: Zhuangtai)
    func isOff(zt: Zhuangtai)
    func meOff()
}