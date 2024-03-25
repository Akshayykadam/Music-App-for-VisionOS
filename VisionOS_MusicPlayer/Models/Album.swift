//
//  Album.swift
//  VisionOS_MusicPlayer
//
//  Created by Akshay Kadam on 19/03/24.
//

import Foundation

struct Album: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subtitle: String
}

let album: [Album] = [
        Album(image: "https://upload.wikimedia.org/wikipedia/en/c/cd/Ed_Sheeran_-_Equals.png", title: "Bad Habits", subtitle: "Bad Habits"),
        Album(image: "https://upload.wikimedia.org/wikipedia/en/7/79/Take_Me_Home_by_One_Direction.png", title: "Take Me Home", subtitle: "Rock Me"),
        Album(image: "https://cdns-images.dzcdn.net/images/cover/2afe10dde004c232536d83a13457b47f/264x264.jpg", title: "The Way That Lovers Do", subtitle: "Co2"),
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/f82e0ccd8c79fff781a4a80ca35b3be9/500x500-000000-80-0-0.jpg", title: "In Tokens & Charms", subtitle: "Big Surprise"),
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/bcfea9a4f566ba66a78c69c8f09cf9ec/500x500-000000-80-0-0.jpg", title: "Shehron Ke Raaz", subtitle: "Shehron Ke Raaz"),
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/b94ed38d0e5902e2f097c4e25f078bcd/500x500-000000-80-0-0.jpg", title: "Stargazing", subtitle: "First Time"),
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/acb3c30b4d1225a0184445c005679f1c/500x500-000000-80-0-0.jpg", title: "Thrill Of The Chase", subtitle: "Gone Are The Days (feat. James Gillespie)"),
        
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/10e65f11b64facfe40d6ad98a0eef672/500x500-000000-80-0-0.jpg", title: "Golden Hour", subtitle: "Feels Like Forever"),
        
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/0d6a03d9ec7c93ad31203f09216cfbf1/500x500-000000-80-0-0.jpg", title: "Ved", subtitle: "Udd Gaye"),
        
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/29cbe84c7622a45e25caf5322f6b487d/500x500-000000-80-0-0.jpg", title: "Bass Rani", subtitle: "Chennai Bass"),
        
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/8d54ffac647e9e40cd91686c8a906de6/500x500-000000-80-0-0.jpg", title: "Changes", subtitle: " Intentions"),
        
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/dd6fe7fa9267185c4b835bd4f155d1d2/500x500-000000-80-0-0.jpg", title: "STAY", subtitle: " STAY"),
        
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/ad976b452093de3c67373d47216cf268/500x500-000000-80-0-0.jpg", title: "WRLD ON DRUGS", subtitle: "  Astronauts"),
        
        Album(image: "https://e-cdn-images.dzcdn.net/images/cover/c000a4d39f31f3716bf3f11aa5fab080/500x500-000000-80-0-0.jpg", title: "beerbongs & bentleys", subtitle: " rockstar"),
]
