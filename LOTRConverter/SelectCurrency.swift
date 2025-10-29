//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Pratto on 04/09/2025.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
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
                IconGrid(currency: $topCurrency)
                
                //  Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)
                
                //  Currency Icons
                IconGrid(currency: $bottomCurrency)

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
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    PreviewWrapper()
}

// Estructura auxiliar para manejar los @State en la preview
private struct PreviewWrapper: View {
    @State private var topCurrency: Currency = .silverPenny
    @State private var bottomCurrency: Currency = .goldPenny
    
    var body: some View {
        SelectCurrency(topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
    }
}
