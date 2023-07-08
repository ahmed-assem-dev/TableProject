//
//  CityTableView.swift
//  TableProject
//
//  Created by Assem on 08/07/2023.
//

import SwiftUI


struct CityTableView: View {
    var sampleCities = City.sample.sorted(using: KeyPathComparator(\.name))
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        VStack {
            Text("Cities")
                .font(.largeTitle)
            Table(sampleCities){
                TableColumn("Name"){ city in
                    VStack {
                        HStack{
                            VStack {
                                Text(city.name)
                            }
                            Spacer()
                            if sizeClass == .compact{
                                HStack {
                                    Text(city.country)

                                }
                                    
                            }
                        }
                    }
                }
                TableColumn("Capital"){city in
                    HStack{
                        Spacer()
                        Text(city.isCapital ? "Yes" : "No")
                        Spacer()
                    }
                }.width(60)
                TableColumn("Country", value: \.country)
                TableColumn("Population"){city in
                    Text("\(city.population)")
                }
            }
        }
    }
}

struct CityTableView_Previews: PreviewProvider {
    static var previews: some View {
        CityTableView()
    }
}
