//
//  DrinkListItemView.swift
//  DrinkAPI
//
//  Created by Robert Palmer on 2/5/24.
//

import SwiftUI

struct DrinkListItemView: View {
    let drinkObject:Drink
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: drinkObject.strDrinkThumb + "/preview")){
                image in image.image?.resizable()
                    .aspectRatio(contentMode: .fit)
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .center){
                Text(drinkObject.strDrink)
                    .font(.body)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text(drinkObject.strTags ?? "Tags: ")
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            .padding(.all)
            Spacer()
        }
    }
}

#Preview {
    DrinkListItemView(drinkObject: Drink(idDrink: String(), strDrink: String(), strDrinkAlternate: String(), strTags: String(), strVideo: "", strCategory: String(), strIBA: String(), strAlcoholic: String(), strGlass: String(), strInstructions: String(), strInstructionsES: String(), strInstructionsDE: String(), strInstructionsFR: String(), strInstructionsIT: String(), strInstructionsZH_HANS: String(), strInstructionsZH_HANT: String(), strDrinkThumb: String(), strIngredient1: String(), strIngredient2: String(), strIngredient3: String(), strIngredient4: String(), strIngredient5: String(), strIngredient6: String(), strIngredient7: String(), strIngredient8: String(), strIngredient9: String(), strIngredient10: String(), strIngredient11: String(), strIngredient12: String(), strIngredient13: String(), strIngredient14: String(), strIngredient15: String(), strMeasure1: String(), strMeasure2: String(), strMeasure3: String(), strMeasure4: String(), strMeasure5: String(), strMeasure6: String(), strMeasure7: String(), strMeasure8: String(), strMeasure9: String(), strMeasure10: String(), strMeasure11: String(), strMeasure12: String(), strMeasure13: String(), strMeasure14: String(), strMeasure15: String(), strImageSource: String(), strImageAttribution: String(), strCreativeCommonsConfirmed: String(), dateModified: String()))
}

