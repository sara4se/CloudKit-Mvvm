//
//  File.swift
//  CloudKitlab1
//
//  Created by Sara Alhumidi on 18/05/1444 AH.
//

import Foundation
import CloudKit
struct ItemListing{
    var recordId : CKRecord.ID?
    let firstName : String
    let lastName : String
    let major : String
    let age : Int

    init(recordId: CKRecord.ID? = nil, firstName: String, lastName: String, age: Int , major: String) {
        self.recordId = recordId
        self.firstName = firstName
        self.lastName = lastName
        self.major = major
        self.age = age
    }
    
    func toDictionary()->[String : Any]{
        return ["firstName": firstName, "lastName" : lastName, "age": age, "major": major]
    }
}
