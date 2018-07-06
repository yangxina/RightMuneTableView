//
//  Service_RouterApi.swift
//  Pods
//
//  Created by 小星星 on 2018/7/6.
//

import Foundation

import TZRouter

public extension TZRouterMacro {
   
    fileprivate static let  kNameSpace = "RightMuneTable"
    fileprivate static let  kTarget = "RouterApi"
    fileprivate static let  kSelector1 = "getRouterApiData"
    fileprivate static let  kSelector2 = "retureStingArray"
    fileprivate static let  kSelector3 = "retureIntArray"
    fileprivate static let  kSelector4 = "getRouterApiInt"
}
public extension TZRouter {
    
    /// 这里是暴露给外部调用的方法 ：
    
    /*  kSelector1  */
    public func getRouterApiData() -> String {
        let value = perform(action: TZRouterMacro.kSelector1, onTarget: TZRouterMacro.kTarget, inNamespace: TZRouterMacro.kNameSpace, withParams: nil)
        guard let strings = value as? String else {
            return ""
        }
        return strings
    }
    /*   kSelector2    */
    public func retureStingArray() -> [String] {
        let value = perform(action: TZRouterMacro.kSelector2, onTarget: TZRouterMacro.kTarget, inNamespace: TZRouterMacro.kNameSpace, withParams: nil)
        guard let stringArray = value as? [String] else {
            return []
        }
        return stringArray
        
    }
    /*   kSelector3    */
    public func retureIntArray(_ params: [String: Any]) -> [Int] {
        let value = perform(action: TZRouterMacro.kSelector3, onTarget: TZRouterMacro.kTarget, inNamespace: TZRouterMacro.kNameSpace, withParams: params)
        guard let IntArray = value as? [Int] else {
            return []
        }
        return IntArray
    }
    
    /*   kSelector4    */
    public func getRouterApiInt(_ params: [String: Any]) -> Int {
        let value = perform(action: TZRouterMacro.kSelector4, onTarget: TZRouterMacro.kTarget, inNamespace: TZRouterMacro.kNameSpace, withParams: params)
        guard let int = value as? Int else {
            return 0
        }
        return int
    }
}


