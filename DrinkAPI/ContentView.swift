//
//  ContentView.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 1/16/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var drinks: [Drink] = []
    @State private var searchText = ""
    var currentPage = 1
    var totalPages = 1
    var pageLimit = 5
    
    
    var body: some View {
        VStack(alignment: .center){
//            NavigationStack{
//                List(drinks, id: \.idDrink){drink in
//                    Text("\(drink.strDrink)")
//                }
//            }
            NavigationStack(root: {
                TextField("Search Drinks", text: $searchText )
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .onChange(of: searchText) { value in
                        loadSearchData(searchItem: searchText)
                    }
                
                List(drinks,id: \.idDrink) { drink in
                  
                    NavigationLink {
                        DrinkView(drinkObject: drink)
                    } label: {
                        DrinkListItemView(drinkObject: drink)
                    }

                }
                .listRowSeparator(/*@START_MENU_TOKEN@*/.visible/*@END_MENU_TOKEN@*/)
            })
            .padding(.all)

            
        }
        .padding(.all)
        .onAppear(perform: {
            loadData()
        })
    }
    private func loadData(){
        var baseURL = URLComponents()
        baseURL.host = "www.thecocktaildb.com"
        baseURL.scheme = "https"
        baseURL.path = "/api/json/v1/1/search.php"
        baseURL.queryItems = [URLQueryItem(name: "f", value: "a")]
                //URL(string: "www.thecocktaildb.com/api/json/v1/1/search.php?") else {
        //debugPrint(baseURL.string ?? "")
        guard let url = baseURL.url else {
                    print("Invalid URL")
                    return
            }

            URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("Error fetching data: \(error)")
                    return
                }

                guard let data = data else {
                    print("No data received")
                    return
                }

                do {
                    let decoder = JSONDecoder()
                    let drinksResponse = try decoder.decode(Drinks.self, from: data)
//                    debugPrint(drinksResponse.drinks.count)
                    DispatchQueue.main.async {
                        self.drinks = drinksResponse.drinks
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }.resume()
    }
    private func addItem() {
        
    }
    private func loadSearchData(searchItem: String){
        var baseURL = URLComponents()
        baseURL.host = "www.thecocktaildb.com"
        baseURL.scheme = "https"
        baseURL.path = "/api/json/v1/1/search.php"
        baseURL.queryItems = [URLQueryItem(name: "s", value: searchItem)]
                //URL(string: "www.thecocktaildb.com/api/json/v1/1/search.php?") else {
        //debugPrint(baseURL.string ?? "")
        guard let url = baseURL.url else {
                    print("Invalid URL")
                    return
            }

            URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    print("Error fetching data: \(error)")
                    return
                }

                guard let data = data else {
                    print("No data received")
                    return
                }

                do {
                    let decoder = JSONDecoder()
                    let drinksResponse = try decoder.decode(Drinks.self, from: data)
//                    debugPrint(drinksResponse.drinks.count)
                    DispatchQueue.main.async {
                        self.drinks = drinksResponse.drinks
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }.resume()
    }
    private func deleteItems(offsets: IndexSet) {
        
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

#Preview {
    ContentView()
}
