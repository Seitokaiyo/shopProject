//
//  DataBaseService.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 16.03.2023.
//

import Foundation
import FirebaseCore
import FirebaseFirestore
import SwiftUI

class DataBaseService {
    class func getDataModel(complition: @escaping([ListDataModel]) -> ()) {
        let db = Firestore.firestore()
        db.collection("notificationList").getDocuments(){ (querySnapshot, error) in
            guard error == nil else { return print(error!.localizedDescription) }
            guard let querySnapshot = querySnapshot else { return }
            
            DispatchQueue.main.async {
                var result = [ListDataModel]()
                
                for document in querySnapshot.documents {
                    let data = document.data()
                    let id = data["id"] as? Int ?? 0
                    let title = data["title"] as? String ?? ""
                    let description = data["description"] as? String ?? ""
                    
                    result.append(ListDataModel(id: id,
                                                title: title,
                                                description: description))
                }
                
                complition(result)
            } 
        }
    }
    
    class func addDataModel(in item: ListDataModel) {
        let db = Firestore.firestore()
        db.collection("notificationList").addDocument(data: [
            "id": "\(item.id!)",
            "title": item.title ?? "",
            "description": item.description ?? ""
        ]){ (error) in
            guard error == nil else { return print(error!.localizedDescription) }
            print("success")
        }
    }
    
    class func getProfilDataModel(complition: @escaping(ProfilDataModel) -> ()) {
        let db = Firestore.firestore()
        db.collection("prof").getDocuments(){ (querySnapshot, error) in
            guard error == nil else { return print(error!.localizedDescription) }
            
            if let querySnapshot = querySnapshot {
                var profile = ProfilDataModel()
                
                for document in querySnapshot.documents {
                    let data = document.data()
                    let id = data["id"] as? Int ?? 0
                    let image = data["image"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    let secondname = data["secondname"] as? String ?? ""
                    
                    profile = ProfilDataModel(id: id, image: image, name: name, secondname: secondname)
                }
                
                complition(profile)
            }
        }
    }
}

class ListDataModel: Identifiable, Codable {
    var id: Int?
    var title: String?
    var description: String?
    
    init(id: Int?, title: String?, description: String?) {
        self.id = id
        self.title = title
        self.description = description
    }
}

class ProfilDataModel: Identifiable {
    var id: Int?
    var image: String?
    var imageData: Data?
    var name: String?
    var secondname: String?
    
    init(id: Int? = nil, image: String? = nil, imageData: Data? = nil, name: String? = nil, secondname: String? = nil) {
        self.id = id
        self.image = image
        self.name = name
        self.secondname = secondname
    }
}

extension Image {
    init?(base64String: String){
        guard let imageData = Data(base64Encoded: base64String) else { return nil }
        guard let image = UIImage(data: imageData) else { return nil }
        self = Image(uiImage: image)
    }
}
