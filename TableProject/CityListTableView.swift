//
//  CityListTableView.swift
//  TableProject
//
//  Created by Assem on 08/07/2023.
//

import SwiftUI


struct CityListTableView: View {
    var sampleCities = City.sample.sorted(using: KeyPathComparator(\.name))

    var body: some View {
        List{
            HStack{
                VStack{
                    Text("City")
                        .bold()
                        .foregroundColor(.blue)
                        .font(.caption)
                    Spacer()
                    ForEach(sampleCities) { city in
                        Text(city.name)
                            .font(.caption)
                        Spacer()
                    }
                }

                Spacer()
                VStack{
                    Text("Capital")
                        .bold()
                        .foregroundColor(.blue)
                        .font(.caption)
                    Spacer()
                    ForEach(sampleCities) { city in
                        Text(city.isCapital ? "yes" : "No")
                            .font(.caption)
                        Spacer()
                    }
                }

                Spacer()
                VStack{
                    Text("Country")
                        .bold()
                        .foregroundColor(.blue)
                        .font(.caption)
                    Spacer()
                    ForEach(sampleCities) { city in
                        Text(city.country)
                            .font(.caption)
                        Spacer()
                    }
                }
                Spacer()
                VStack{
                    Text("Population")
                        .bold()
                        .foregroundColor(.blue)
                        .font(.caption)
                    Spacer()
                    ForEach(sampleCities) { city in
                        Text(String(city.population))
                            .font(.caption)
                        Spacer()
                    }
                }


            }
            .padding()
            .background(Color("gray"))
            .cornerRadius(20)
        }
        .listStyle(.plain)
        
    }
}

struct CityListTableView_Previews: PreviewProvider {
    static var previews: some View {
        CityListTableView()
    }
}
