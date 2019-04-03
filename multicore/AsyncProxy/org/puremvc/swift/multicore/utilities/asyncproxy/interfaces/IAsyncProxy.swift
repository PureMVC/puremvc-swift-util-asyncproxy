//
//  IAsyncProxy.swift
//  PureMVC SWIFT MultiCore Utility – AsyncProxy
//
//  Copyright(c) 2015-2025 Saad Shams <saad.shams@puremvc.org>
//  Your reuse is governed by the Creative Commons Attribution 3.0 License
//

import PureMVC

/// Protocol to be adopted by an Asynchronous Proxy
public protocol IAsyncProxy: IProxy {
    
    /// Initiate an async activity
    func asyncAction(responder: IResponder, token: Any?)
    
    /// This method is called by a service when the return value has been received.
    func onResult(_ data: Any?)
    
    /// This method is called by a service when an error has been received.
    func onFault(_ info: Any?)
    
}
