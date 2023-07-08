//
//  ContentView.swift
//  TableProject
//
//  Created by Assem on 08/07/2023.
//

import SwiftUI
import Foundation


    struct ContentView: View {
        
        
        var body: some View {
//            CityTableView()
//            CityListTableView()
            NavigationStack{
                
                VStack{
                    HStack(spacing:50){
                        NavigationLink("ListTable"){
                            CityListTableView()
                        }.buttonStyle(.bordered)
                        NavigationLink("Swift Table"){
                            CityTableView()
                        }.buttonStyle(.bordered)
                    }
                    Text("Swift Table works only on larger screens like Ipad and Macintosh, in Iphones it displays two coloumns only with a walkaround and with no coloumn title.")
                        .font(.caption)
                        .foregroundColor(.gray)
                        .frame(width: 200)
                        .multilineTextAlignment(.center)
                }
                
            }
        
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            
            NavigationStack {
                ContentView()
            }
        }
    }
    

