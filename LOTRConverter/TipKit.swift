//
//  TipKit.swift
//  LOTRConverter
//
//  Created by Pratto on 04/11/2025.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap the left or the right currency to bring up the Select Currency screen.")
    
    var image: Image? = Image(systemName: "hand.tap.nill")
}
