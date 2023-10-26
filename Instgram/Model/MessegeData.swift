//
//  MessegeData.swift
//  Instgram
//
//  Created by Hamdy Youssef on 22/10/2023.
//

import Foundation

struct MessegeData {
    var accountImage: String
    var accountName: String
    var messege: String
    
    static func messegeData() -> [MessegeData] {
        let messege1: MessegeData = MessegeData(accountImage: "post1", accountName: "Tamer Hosny", messege: "ايه الاخبار عامل ايه ؟")
        let messege2: MessegeData = MessegeData(accountImage: "post2", accountName: "Elon Musk", messege: "How are You ?")
        let messege3: MessegeData = MessegeData(accountImage: "post3", accountName: "Billi Eilish", messege: "i'm so sorry")
        let messege4: MessegeData = MessegeData(accountImage: "post4", accountName: "Amr Diab", messege: "فاضي انهارده شويه ؟")
        let messege5: MessegeData = MessegeData(accountImage: "post5", accountName: "Hamza Namira", messege: "فاضي شويه نشرب قهوه ف حته بعيده؟")
        let messege6: MessegeData = MessegeData(accountImage: "post6", accountName: "Messi", messege: "I'll won 8th BallonDor")
        let messege7: MessegeData = MessegeData(accountImage: "post7", accountName: "Ronaldo", messege: "Georgina missed you")
        let messege8: MessegeData = MessegeData(accountImage: "post8", accountName: "Georgina", messege: "where are you ?!!")
        let messege9: MessegeData = MessegeData(accountImage: "post9", accountName: "Yassmen Sabry", messege: "مستنياك بكرا ف الشاطبي")
        
        let arrayOfMessege: [MessegeData] = [messege1, messege2, messege3, messege4, messege5, messege6, messege7, messege8, messege9]
        return arrayOfMessege
        
    }
}
