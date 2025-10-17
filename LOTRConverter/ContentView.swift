

import SwiftUI

struct ContentView: View {
    @State var showExchangeinfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        ZStack {
            // Background
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                // Prancing Pony IMG
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency exchange TEXT
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                // Conversion section
                HStack{
                    // Left conversion section
                    VStack{
                        // Currency
                        HStack{
                            // Currency IMG
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            // Currency TEXT
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                                .symbolEffect(.pulse)
                        }
                        .padding(.bottom, -5)
                        
                        // Text field
                        TextField("Amount", text:
                        $leftAmount)
                        .textFieldStyle(.roundedBorder)
                    }
                    // Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    
                    // Right conversion section
                    VStack{
                        // Currency
                        HStack {
                            // Currency TEXT
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            // Currency IMG
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        
                        // Text field
                        TextField("Amount", text:
                        $rightAmount)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(
                            .trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                    // Info button
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeinfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeinfo) {
                        ExchangeInfo()
                    }
                }
                
            }
//            .border(.blue)
        }
            
            
            
        }
    }
    
    #Preview {
        ContentView()
    }
