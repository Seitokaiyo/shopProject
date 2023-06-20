//
//  AppImage.swift
//  ClothesShop
//
//  Created by Роман Сапкеев on 23.02.2023.
//

import Foundation

enum AppImage { 
    enum Category {
        enum Bag {
            static let bag1 = "Bag1"
            static let bag2 = "Bag2"
            static let bag3 = "Bag3"
            static let bag4 = "Bag4"
            static let bag5 = "Bag5"
        }
        
        enum Glass {
            static let glass1 = "Glas1"
            static let glass2 = "Glas2"
            static let glass3 = "Glas3"
            static let glass4 = "Glas4"
            static let glass5 = "Glas5"
            static let glass6 = "Glas6"
            static let glass7 = "Glas7"
        }
        
        enum Pen {
            static let pen1 = "Pen1"
            static let pen2 = "Pen2"
            static let pen3 = "Pen3"
            static let pen4 = "Pen4"
        }
        
        enum Watch {
            static let watch1 = "Watch1"
            static let watch2 = "Watch2"
            static let watch3 = "Watch3"
            static let watch4 = "Watch4"
            static let watch5 = "Watch5"
        }
    }
    
    enum CompanyLogo  {
        static let logoPng = "montblancLogoPng"
        static let logo = "CompanyLogo"
    }
    
    enum Wallpaper {
        static let wallpaper1 = "Wallpaper1"
        static let wallpaper2 = "Wallpaper2"
        static let wallpaper3 = "Wallpaper3"
        static let wallpaper4 = "Wallpaper4"
        static let wallpaper5 = "Wallpaper5"
    }
    
    enum AppIcon {
        static let userImage = "AppUserImage"
        static let nextIcon = "AppIconNext"
        static let magazinIcon = "AppMagazin"
    }
}
