//
//  UserInfoView.swift
//  Quiver Dating app
//
//  Created by стасик on 13.05.24.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Александр")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("19")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("DEBUG: Show profile here...")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
                
            }
            
            Text("Cоздатель этого приложения")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}
struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
