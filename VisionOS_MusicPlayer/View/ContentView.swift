//
//  ContentView.swift
//  VisionOS_MusicPlayer
//
//  Created by Akshay Kadam on 19/03/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    var body: some View {
        NavigationSplitView {
            //Side Menu
            SideBarView()
        } detail: {
            //Album view
            AlbumView()
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}



struct AlbumView: View {
    
    @State private var searchText = ""
    let colum: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    
    var body: some View {
        ScrollView{
            TextField("Search in Albums", text: $searchText)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            LazyVGrid(columns: colum, spacing: 24){
                ForEach(album){ album in
                    Button(action: {}) {
                        VStack(alignment: .leading){
                            AsyncImage(url: URL(string: album.image)){ image in
                                image.resizable()
                            }placeholder: {
                                Rectangle().foregroundStyle(.tertiary)
                            }.aspectRatio(1, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .scaledToFill()
                                .cornerRadius(10)
                            
                            Text(album.title)
                                .lineLimit(1)
                            Text(album.subtitle)
                                .foregroundStyle(.tertiary)
                                .lineLimit(1)
                        }.hoverEffect()
                    }.buttonStyle(.plain)
                        
                }
            }
            
        }
        .padding(.horizontal, 24)
        .toolbar{
            ToolbarItemGroup(placement: .topBarLeading){
                VStack(alignment: .leading){
                    Text("Album")
                        .font(.largeTitle)
                    
                    Text("143 songs")
                        .foregroundStyle(.tertiary)
                }
            }
            
            ToolbarItem{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "line.3.horizontal.decrease")
                })
            }
        }
        .toolbar{
            ToolbarItemGroup(placement: .bottomOrnament){
                HStack{
                    Button{} label: {
                        Image(systemName: "backward.fill")
                            .font(.system(size: 30))
                    }
                    
                    Button{} label: {
                        Image(systemName: "pause.fill")
                            .font(.system(size: 40))
                    }
                    
                    Button{} label: {
                        Image(systemName: "forward.fill")
                            .font(.system(size: 30))
                            .padding(.trailing, 30)
                    }
                    
                    PlaySongCardView()
                    
                    Button{} label: {
                        Image(systemName: "quote.bubble")
                            .font(.system(size: 30))
                    }
                    
                    Button{} label: {
                        Image(systemName: "list.bullet")
                            .font(.system(size: 30))
                    }
                    
                    Button{} label: {
                        Image(systemName: "speaker.wave.3.fill")
                            .font(.system(size: 30))
                    }
                }.padding(.vertical, 8)
            }
        }
    }
}

struct PlaySongCardView: View {
    var body: some View {
        HStack (spacing: 10) {
            AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/en/a/ad/X_cover.png")){
                image in
                image.resizable()
            } placeholder: {
                Rectangle().foregroundStyle(.tertiary)
            }.frame(width: 50, height: 50)
                .cornerRadius(6)
            
            VStack(alignment: .leading){
                Text("Bad Habits")
                Text("Bad Habits")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }.frame(width: 160, alignment: .leading)
            
            Button(action: {} ){
                Image(systemName: "ellipsis")
            }.buttonBorderShape(.circle)
            
        }
        .padding(.all, 8)
        .background(.regularMaterial, in: .rect(cornerRadius: 14))
    }
}
