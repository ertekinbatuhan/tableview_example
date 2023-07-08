//
//  Movies.swift
//  tableview_example
//
//  Created by Batuhan Berk Ertekin on 8.07.2023.
//

import Foundation
import UIKit


class Movies {
    
    var movieName : String?
    
    var movieDate : String?
    
    var movieImage : String?
    
    
    
    
    init(movieName: String? = nil, movieDate: String? = nil, movieImage: String? = nil) {
        self.movieName = movieName
        self.movieDate = movieDate
        self.movieImage = movieImage
    }
    
    
}
