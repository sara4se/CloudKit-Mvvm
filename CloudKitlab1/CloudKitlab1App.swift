//
//  CloudKitlab1App.swift
//  CloudKitlab1
//
//  Created by Sara Alhumidi on 17/05/1444 AH.
//

import SwiftUI
import CloudKit
@main

struct CloudKitlab1App: App {
    let container = CKContainer(identifier: "iCloud.me.CloudKitlab1")
   // @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
         //  SwiftUiView(vm : ItemListViewModel(container: CKContainer.default()))
            ContentView(vm: ItemListViewModel(container: CKContainer.default()))
           // ContentView2()
             
        }
    }
}
