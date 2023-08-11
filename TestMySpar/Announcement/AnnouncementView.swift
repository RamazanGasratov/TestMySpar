//
//  Announcement.swift
//  TestMySpar
//
//  Created by macbook on 10.08.2023.
//

import SwiftUI

struct AnnouncementView: View {
    
    var body: some View {
        Image("qr")
                .renderingMode(.original)
                .resizable()
                .frame(width: 350, height: 130)
                .cornerRadius(15)
    }
}

struct AnnouncementView_Previews: PreviewProvider {
    static var previews: some View {
        AnnouncementView()
    }
}
