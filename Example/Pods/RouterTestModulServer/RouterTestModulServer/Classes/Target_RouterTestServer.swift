//
//  Target_RouterTestServer.swift
//  Pods
//
//  Created by 小星星 on 2018/10/29.
//

import Foundation
import NicooSwiftRouter

extension NicooRouterManager {
    fileprivate static let kNamespace = "RouterTestModule"
    fileprivate static let kTarget = "RouterLogin"
    fileprivate static let kPresentLoginVCAction = "persentLoginVC"
}

extension NicooRouter {
    
    /// 弹出登录控制器
    ///
    /// - Parameter finishedHandler: 登录回调,bool值true代表登录成功,false代表登录失败或者未登录
    
    public func Router_presentLoginViewController(_ finishedHandler: ((_ isLogin: Bool) -> Void)?) {
        var params = [String: Any]()
        params["loginFinishHandler"] = finishedHandler
        let _ = perform(action: NicooRouterManager.kPresentLoginVCAction, onTarget: NicooRouterManager.kTarget, inNamespace: NicooRouterManager.kNamespace, withParams: params)
    }
    
}

