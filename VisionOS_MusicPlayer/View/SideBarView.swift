//
//  SideBarView.swift
//  VisionOS_MusicPlayer
//
//  Created by Akshay Kadam on 19/03/24.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        List(sideMenuItem){item in
            NavigationLink(value: item.self){
                Label(item.name,systemImage: item.icon)
                    .foregroundColor(.white)
            }.navigationDestination(for: SideMenuItem.self){ item in
                //Menu item view
            }
            
        }.toolbar{
            ToolbarItem(placement: .topBarLeading){
                VStack(alignment: .leading){
                    Text("Library")
                        .font(.largeTitle)
                    
                    Text("All Music")
                        .foregroundStyle(.tertiary)
                }
            }
            
            ToolbarItem{
                Button(action:{}, label: {
                    Image(systemName: "ellipsis")
                    
                })
            }
        }
    }
}

#Preview {
    SideBarView()
}
