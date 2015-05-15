//
//  IAsyncProxy.swift
//  PureMVC SWIFT Standard Utility – AsyncProxy
//
//  Copyright(c) 2015-2025 Saad Shams <saad.shams@puremvc.org>
//  Your reuse is governed by the Creative Commons Attribution 3.0 License
//

import PureMVC

/// Protocol to be adopted by an Asynchronous Command.
public protocol IResponder: ICommand {
    
    /// This method is called by `IAsyncProxy` when the return value has been received.
    func result(data: Any?, token: Any?)
    
    /// This method is called by `IAsyncProxy` when an error has been received.
    func fault(info: Any?, token: Any?)
    
}
