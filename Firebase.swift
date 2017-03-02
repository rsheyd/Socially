//
//  Firebase.swift
//  Socially
//
//  Created by Roman Sheydvasser on 2/24/17.
//  Copyright © 2017 RLabs. All rights reserved.
//

import Foundation
import Firebase

class Firebase {
    
    // check login state and logs in user anonymously if not already logged in
    func checkLogin() {
        FIRAuth.auth()!.addStateDidChangeListener() { auth, user in
            if user == nil {
                self.anonymousLogin()
            }
        }
    }
    
    func anonymousLogin() {
        FIRAuth.auth()?.signInAnonymously(completion: { (user, error) in
            if let err = error {
                print(err.localizedDescription)
                return
            }
        })
    }
}
