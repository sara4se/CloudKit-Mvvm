//
//  ItemListViewModel.swift
//  CloudKitlab1
//
//  Created by Sara Alhumidi on 17/05/1444 AH.
//

import Foundation
import CloudKit

enum RecordType: String{
    case itemListing = "ItemListing"
    
}
class ItemListViewModel : ObservableObject{
    private var database : CKDatabase
    private var container : CKContainer
    
    @Published var profilesList: [Profile] = []
    
    
    init(container: CKContainer) {
        self.container = container
        self.database = self.container.publicCloudDatabase
    }
    
    
    
    
    func savedItem( firstName: String, lastName: String, age: Int , major: String){
        let record = CKRecord(recordType: RecordType.itemListing.rawValue)
        let itemListing = ItemListing(firstName: firstName, lastName: lastName, age: age, major: major)
        record.setValuesForKeys(itemListing.toDictionary())
        
        self.database.save(record){ newRecord, error in
            if let error = error{
                print(error)
            }else{
                if let _ = newRecord{
                    print("SAVED")
                }
            }
            
        }
    }
    
    //1
    func fetchProfiles(){
        let predicate = NSPredicate(value: true)
        //2
        //let predicate2 = NSPredicate(format: "firstName == %@", "Sara")
        
        //Record Type depends on what you have named it
        let query = CKQuery(recordType:RecordType.itemListing.rawValue, predicate: predicate)
        
        
        let operation = CKQueryOperation(query: query)
        operation.recordMatchedBlock = { recordId, result in
            DispatchQueue.main.async {
                switch result{
                case .success(let record):
                    let profile = Profile(record: record)
                    self.profilesList.append(profile)
                    print(profile)
                case .failure(let error):
                    print("\(error.localizedDescription)")
                }
            }
        }
        
        CKContainer.default().publicCloudDatabase.add(operation)
    }
    
    
    func addLearner(){
        let record = CKRecord(recordType: "StLerners")
        record["firstName"] = "Mohammed"
        record["lastName"] = "Ahmed"
        record["major"] = "Art"
        record["age"] = 23
        CKContainer.default().publicCloudDatabase.save(record) { record, error in
            guard  error  == nil else{
                print(error?.localizedDescription)
                return
            }
           
        }
        print(record)
    }
}
