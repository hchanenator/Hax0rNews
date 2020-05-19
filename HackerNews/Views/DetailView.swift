//
//  DetailView.swift
//  HackerNews
//
//  Created by Dad on 2020-05-19.
//  Copyright © 2020 Dad. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.ca")
    }
}

