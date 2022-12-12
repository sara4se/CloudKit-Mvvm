//
//  File.swift
//  CloudKitlab1
//
//  Created by Sara Alhumidi on 17/05/1444 AH.
//

import Foundation
  
//class MyManagedObject: NSManagedObject {
//   
//    @NSManaged var name: String?
//    @NSManaged var age: NSNumber?
//}
//
//struct MyViewModel {
//   
//    var name: String
//    var age: String
//   
//    init(managedObject: MyManagedObject) {
//        self.name = managedObject.name ?? ""
//        self.age = "\(managedObject.age)" ?? ""
//    }
//}
//
//final class QueryListStore: NSObject, BindableObject, NSFetchedResultsControllerDelegate {
//   
//    var didChange = PassthroughSubject<queryliststore, never="">()
//    var results = [MyViewModel]()
//    var controller = NSFetchedResultsController()
//   
//    override init() {
//       
//        super.init()
//        /* Create and configure fetched results controller */
//       
//        controller.delegate = self
//       
//        do {
//            try controller.performFetch()
//        } catch {
//            fatalError("Failed to fetch entities: \(error)")
//        }
//    }
//   
//    func controllerDidChangeContent(_ controller: NSFetchedResultsController) {
//       
//        var viewModels = [MyViewModel]()
//       
//        /* Iterate over results, initalizing view models from your managed objects and adding them to the array
//        
//         let viewModel = MyViewModel(managedObject: managedObject)
//         viewModels.append(viewModel)
//        
//         */
//       
//        self.results = viewModels
//       
//        didChange.send(self)
//    }
//}
//
//class MyManagedObject: NSManagedObject {
//   
//    @NSManaged var name: String?
//    @NSManaged var age: NSNumber?
//}
//
//struct MyViewModel {
//   
//    var name: String
//    var age: String
//   
//    init(managedObject: MyManagedObject) {
//        self.name = managedObject.name ?? ""
//        self.age = "\(managedObject.age)" ?? ""
//    }
//}
//
//final class QueryListStore: NSObject, BindableObject, NSFetchedResultsControllerDelegate {
//   
//    var didChange = PassthroughSubject<queryliststore, never="">()
//    var results = [MyViewModel]()
//    var controller = NSFetchedResultsController()
//   
//    override init() {
//       
//        super.init()
//        /* Create and configure fetched results controller */
//       
//        controller.delegate = self
//       
//        do {
//            try controller.performFetch()
//        } catch {
//            fatalError("Failed to fetch entities: \(error)")
//        }
//    }
//   
//    func controllerDidChangeContent(_ controller: NSFetchedResultsController) {
//       
//        var viewModels = [MyViewModel]()
//       
//        /* Iterate over results, initalizing view models from your managed objects and adding them to the array
//        
//         let viewModel = MyViewModel(managedObject: managedObject)
//         viewModels.append(viewModel)
//        
//         */
//       
//        self.results = viewModels
//       
//        didChange.send(self)
//    }
//}
//
