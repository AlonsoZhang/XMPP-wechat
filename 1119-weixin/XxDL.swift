//
//  XxDL.swift
//  1119-weixin
//
//  Created by Alonso Zhang on 15/11/20.
//  Copyright © 2015年 Alonso Zhang. All rights reserved.
//

import Foundation

//消息代理协议
protocol XxDL{
    func newMsg(aMsg: WXMessage)
}