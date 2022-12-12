//
//  File.swift
//  CloudKitlab1
//
//  Created by Sara Alhumidi on 18/05/1444 AH.
//

import Foundation
import CloudKit


//Model
struct Profile: Identifiable {
    
    let id: CKRecord.ID
    let age: Int
    let firstName : String
    let lastName : String
    let major: String
    
   
    init(record:CKRecord) {
        self.id = record.recordID
        self.age = record["age"] as? Int ?? 18
        self.firstName = record["firstName"]  as? String ?? "N/A"
        self.lastName = record["lastName"] as? String ?? "N/A"
        self.major = record["major"] as? String ?? "N/A"
    }
    
}

