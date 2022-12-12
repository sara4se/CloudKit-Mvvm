//
//  ContentView.swift
//  CloudKitlab1
//
//  Created by Sara Alhumidi on 17/05/1444 AH.
//

import SwiftUI
import CloudKit

struct ContentView: View {
    @State var strFirstName : String = "ruba"
    @State var strLastName : String = "alghamdi"
    @State var age : Int =  20
    @State var strMajor : String =  "cs"
  
    @StateObject private var vm : ItemListViewModel
    init(vm: ItemListViewModel){
        _vm = StateObject(wrappedValue: vm)
    }
    var body: some View {
        NavigationView{
            List{
                ForEach(vm.profilesList) { proile  in
                    HStack(spacing: 2){
                        Image("avatar\(Int.random(in: 1..<7))")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                            .padding(.vertical)
                            .padding(.horizontal, 2)
                        
                        VStack(alignment: .leading, spacing:6){
                            Text(proile.firstName).font(.title3)
                                .fontWeight(.semibold)
                            Text(proile.lastName)
                                .font(.title3)
                                .fontWeight(.semibold)
                            Text("\(proile.major)").font(.title3)
                                .fontWeight(.semibold)
                            Text("\(proile.age) years old").font(.title3)
                                .fontWeight(.semibold)
                            
                        }
                        .padding(6)
                    }
                }
            }
            
            .listStyle(.plain)
        }
        .onAppear{
            vm.addLearner()
            vm.fetchProfiles()
            vm.savedItem(firstName: strFirstName , lastName: strLastName, age: age, major: strMajor)
        }
        
    }
}
    
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm : ItemListViewModel(container: CKContainer.default()))
    }
}
