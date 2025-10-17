//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Pratto on 04/09/2025.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            // Parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                //  Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                //  Currency icons
                CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                
                //  Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                //  Currency Icons

                //  Done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview{
    SelectCurrency()
}
