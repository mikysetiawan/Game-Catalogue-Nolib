//
//  GameModel.swift
//  Game Sub
//
//  Created by Agus Adi Pranata on 18/07/20.
//  Copyright © 2020 gusadi. All rights reserved.
//

import Foundation
import UIKit

struct GameModel {
    var id: Int
    var name: String
    var released: String
    var bgImage: String
    var rating: Double
    var image: UIImage?
    var state: DownloadState = .new
    
    mutating func downloadImage(imagedata: UIImage, statedata: DownloadState) {
        image = imagedata
        state = statedata
    }
}

enum DownloadState {
    case new, downloaded, failed
}
