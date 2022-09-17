//
//  LoginViewModel.swift
//  Swifty Companion
//
//  Created by Godrick Mayweather on 14.09.2022.
//

import UIKit
import Combine

//class BoolSubscriber: Subscriber {
//    typealias Input = Bool
//    
//    typealias Failure = Never
//    
//    func receive(_ input: Bool) -> Subscribers.Demand {
//         subs
//    }
//    
//    func receive(completion: Subscribers.Completion<Never>) {
//        <#code#>
//    }
//    
//    func receive(subscription: Subscription) {
//        <#code#>
//    }
//}

protocol LoginViewModelInput {
    var isEmpryTextView:  { get set }
}

protocol LoginViewModelOutput {
    
}

class LoginViewModel {

}

extension LoginViewModel: LoginViewModelInput {
    
}

extension LoginViewModel: LoginViewModelOutput {
    
}
