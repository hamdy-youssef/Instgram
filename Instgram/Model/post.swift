//
//  post.swift
//  Instgram
//
//  Created by Hamdy Youssef on 21/10/2023.
//

import Foundation
struct Posts {
    var accountImage: String
    var accountName: String
    var postImage: String
    var likes: String
    var content: String
    
    static func setPostsData() -> [Posts] {
        
        let post1: Posts = Posts(accountImage: "post1", accountName: "HamdyYoussef", postImage: "post1", likes: "123M likes", content: "My Instagram beta program, does it work? My Instagram beta program, does it work? My Instagram beta program, does it work? My Instagram beta program, does it work?")
        
        let post2: Posts = Posts(accountImage: "post2", accountName: "AhmedTark", postImage: "post2", likes: "23K likes", content: "My Instagram beta program, does it work?")
        
        let post3: Posts = Posts(accountImage: "post3", accountName: "YassenEldesouky", postImage: "post3", likes: "25K likes", content: "My Instagram beta program, does it work?")
        
        let post4: Posts = Posts(accountImage: "post4", accountName: "ZizoIbrahim", postImage: "post4", likes: "65K likes", content: "My Instagram beta program, does it work?")
        
        let post5: Posts = Posts(accountImage: "post5", accountName: "AhmedOsamy", postImage: "post5", likes: "345K likes", content: "My Instagram beta program, does it work?")
        
        let post6: Posts = Posts(accountImage: "post6", accountName: "FarisYoussef", postImage: "post6", likes: "143 likes", content: "My Instagram beta program, does it work?")
        
        let post7: Posts = Posts(accountImage: "post7", accountName: "MohamedTark", postImage: "post7", likes: "676 likes", content: "My Instagram beta program, does it work?")
        
        let post8: Posts = Posts(accountImage: "post8", accountName: "FarisYoussef", postImage: "post8", likes: "76 likes", content: "My Instagram beta program, does it work?")
        
        let post9: Posts = Posts(accountImage: "post9", accountName: "SamirTamara", postImage: "post9", likes: "12 likes", content: "My Instagram beta program, does it work?")
        
        let arrrayOfPosts: [Posts] = [post1, post2, post3, post4, post5, post6, post7, post8, post9]
        
        return arrrayOfPosts
    }
}
