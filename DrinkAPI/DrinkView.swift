//
//  DrinkView.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 1/24/24.
//

import SwiftUI

struct DrinkView: View {
    let drinkObject:Drink
    var ingrdnts:[String] = []
    
    
    
     func populateIngredients() -> [String]{
         let mirror = Mirror(reflecting: drinkObject)
         return mirror.children.compactMap { atr in
            if let label = atr.label, label.contains("strIngredient"){
                return atr.value as? String
            }
            else {
                return nil
            }
        }
    }
    
    func populateMeasurements() -> [String] {
        let mirror = Mirror(reflecting: drinkObject)
        
        return mirror.children.compactMap { atr in
            if let label = atr.label, label.contains("strMeasure"){
                return atr.value as? String
            }
            else{
                return nil
            }
        }
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("\(drinkObject.strDrink)").font(.largeTitle).multilineTextAlignment(.center).padding(.all).foregroundStyle(.primary)
                Spacer()
            }
            .padding(.bottom)
            HStack(alignment: .top){
                Image(systemName: "shield.fill")
                    .renderingMode(.original)
                    .resizable(resizingMode: .tile)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                    .frame(width: 80.0, height: 80.0)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                VStack{
                    let ingrdnts = populateIngredients()
                    Text("Ingredients")
                        .font(.title)
                    
                    List(ingrdnts, id: \.self){
                        ingrdnt in
                        Text(ingrdnt)
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("Tags")
                        .font(.title)
                    HStack{
                        Text(drinkObject.strTags ?? "")
                    }
                    Spacer()
                    Text("Glass Type: \(drinkObject.strGlass)")
                        .font(.subheadline)
                }
            }
            .padding([.top, .leading, .bottom])
            VStack{
                Text("Instructions")
                    .font(.title)
                Text(drinkObject.strInstructions)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        .padding(.vertical)

    }
}

#Preview {
    DrinkView(drinkObject: Drink(idDrink: String(), strDrink: "Drink Name", strDrinkAlternate: String(), strTags: String(), strVideo: String(), strCategory: String(), strIBA: String(), strAlcoholic: String(), strGlass: String(), strInstructions: String(), strInstructionsES: String(), strInstructionsDE: String(), strInstructionsFR: String(), strInstructionsIT: String(), strInstructionsZH_HANS: String(), strInstructionsZH_HANT: String(), strDrinkThumb: String(), strIngredient1: String(), strIngredient2: String(), strIngredient3: String(), strIngredient4: String(), strIngredient5: String(), strIngredient6: String(), strIngredient7: String(), strIngredient8: String(), strIngredient9: String(), strIngredient10: String(), strIngredient11: String(), strIngredient12: String(), strIngredient13: String(), strIngredient14: String(), strIngredient15: String(), strMeasure1: String(), strMeasure2: String(), strMeasure3: String(), strMeasure4: String(), strMeasure5: String(), strMeasure6: String(), strMeasure7: String(), strMeasure8: String(), strMeasure9: String(), strMeasure10: String(), strMeasure11: String(), strMeasure12: String(), strMeasure13: String(), strMeasure14: String(), strMeasure15: String(), strImageSource: String(), strImageAttribution: String(), strCreativeCommonsConfirmed: String(), dateModified: String()
                                ))
}
