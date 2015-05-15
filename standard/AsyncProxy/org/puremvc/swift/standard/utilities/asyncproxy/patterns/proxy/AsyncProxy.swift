//
//  AsyncProxy.swift
//  PureMVC SWIFT Standard Utility – AsyncProxy
//
//  Copyright(c) 2015-2025 Saad Shams <saad.shams@puremvc.org>
//  Your reuse is governed by the Creative Commons Attribution 3.0 License
//

import PureMVC

/**
A base `IAsyncProxy` implementation.

It allows the creator to associate data (a token)
and methods that should be called when a request is completed.

Your subclass should override the `asyncAction`
method where your domain logic will handle the async operation.
Must call super to set responder and the token.

Instantiate as a proxy, with or without a name. The async activity
is started by invoking the `asyncAction` method. There
cannot be more than one activity running per instance.

`@see org.puremvc.swift.standard.utilities.asyncproxy.patterns.proxy.AsyncProxy AsyncProxy`
*/
public class AsyncProxy: Proxy, IAsyncProxy {
    
    /// Message constant if an async activity is already in progress for this instance
    public class var PROGRESS_MSG: String { return "Async activity already in progress for this instance!" }
    
    //Responder for callbacks, defined as a strong reference instead of weak, since commands are temporarily instantiated by the Controller
    private var responder: IResponder?
    
    //to restrict to a one async activity per instance at a time
    private var asyncInProgress = false
    
    //Additional information to associate with this request.
    private var token: Any?
    
    /// Constructor
    public init(name: String?=nil) {
        super.init(proxyName: name)
    }
    
    /**
    Initiate an async activity and bind result/fault handlers to it
    
    :param: responder IResponder type providing result and fault functions
    :param: token Additional information to associate with this request.
    */
    public func asyncAction(responder: IResponder, token: Any?) {
        assert(!asyncInProgress, AsyncProxy.PROGRESS_MSG)
        
        asyncInProgress = true
        self.responder = responder
        self.token = token
    }
    
    /**
    This method is called by a service when the return value has been received.
    Optionally override this method in your subclass to manage or prepare the result followed by call to super for the responder's result call
    
    :param: data Contains the information returned from the request.
    */
    public func onResult(data: Any?) {
        asyncInProgress = false
        responder!.result(data, token: token)
        responder = nil
    }
    
    /**
    This method is called by a service when an error has been received.
    Optionally override this method in your subclass to manage or prepare the error followed by call to super for the responder's fault call
    
    :param: info Contains the information about the error that occured.
    */
    public func onFault(info: Any?) {
        asyncInProgress = false
        responder!.fault(info, token: token)
        responder = nil
    }
    
}