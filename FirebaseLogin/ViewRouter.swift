import Foundation
import SwiftUI
import Combine
import Firebase

class ViewRouter: ObservableObject {
   
    
    var ref1 = Database.database().reference(withPath: "AmirURL").observe(.value, with: { snapshot in
            let dict = snapshot.value as! [String: Any]
            globalURL = dict["HomePage"] as! String
        })
    
       var ref2 = Database.database().reference(withPath: "ArticleNames").observe(.value, with: { snapshot in
           let dict = snapshot.value as! [String: Any]
           globalArticleName1 = dict["Article1"] as! String
           globalArticleName2 = dict["Article2"] as! String
           globalArticleName3 = dict["Article3"] as! String
           globalArticleName4 = dict["Article4"] as! String
       })
    
        var ref3 = Database.database().reference(withPath: "ArticleURLS").observe(.value, with: { snapshot in
        let dict = snapshot.value as! [String: Any]
        globalArticleURL1 = dict["ArticleURL1"] as! String
        globalArticleURL2 = dict["ArticleURL2"] as! String
        globalArticleURL3 = dict["ArticleURL3"] as! String
        globalArticleURL4 = dict["ArticleURL4"] as! String
    })
    
    var ref4 = Database.database().reference(withPath: "Plants").observe(.value, with: { snapshot in
        let dict = snapshot.value as! [String: Any]
        globalPlantName1 = dict["Plant1"] as! String
        globalPlantName2 = dict["Plant2"] as! String
        globalPlantName3 = dict["Plant3"] as! String
        globalPlantName4 = dict["Plant4"] as! String
      
    })
    
    var reff1 = Database.database().reference(withPath: "PlantVals/Plant1").observe(.value, with: { snapshot in
        let dict = snapshot.value as! [String: Any]
        globalRedColor1 = dict["Red"] as! Double
        globalGreenColor1 = dict["Green"] as! Double
        globalBlueColor1 = dict["Blue"] as! Double
        globalRedColor = globalRedColor1
        globalGreenColor = globalGreenColor1
        globalBlueColor = globalBlueColor1
    })
    
    var reff2 = Database.database().reference(withPath: "PlantVals/Plant2").observe(.value, with: { snapshot in
        let dict = snapshot.value as! [String: Any]
        globalRedColor2 = dict["Red"] as! Double
        globalGreenColor2 = dict["Green"] as! Double
        globalBlueColor2 = dict["Blue"] as! Double
    })
    
    var reff3 = Database.database().reference(withPath: "PlantVals/Plant3").observe(.value, with: { snapshot in
        let dict = snapshot.value as! [String: Any]
        globalRedColor3 = dict["Red"] as! Double
        globalGreenColor3 = dict["Green"] as! Double
        globalBlueColor3 = dict["Blue"] as! Double
    })
    
    var reff4 = Database.database().reference(withPath: "PlantVals/Plant4").observe(.value, with: { snapshot in
        let dict = snapshot.value as! [String: Any]
        globalRedColor4 = dict["Red"] as! Double
        globalGreenColor4 = dict["Green"] as! Double
        globalBlueColor4 = dict["Blue"] as! Double
    })
    
    var ref6 = Database.database().reference(withPath: "Thresholds").observe(.value, with: { snapshot in
        let dict = snapshot.value as! [String: Any]
        globalGoodThreshold = dict["GoodThreshold"] as! Double
        globalBadThreshold = dict["BadThreshold"] as! Double
    })
    
    var ref7 = Database.database().reference(withPath: "Accuracy").observe(.value, with: { snapshot in
        let dict = snapshot.value as! [String: Any]
        globalAcceptPercentageLow = dict["Low"] as! Double
        globalAcceptPercentageMedium = dict["Medium"] as! Double
        globalAcceptPercentageHigh = dict["High"] as! Double
    })
    
   @Published var currentView = "first login"
    
}
