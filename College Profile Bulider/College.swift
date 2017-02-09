//
//  College.swift
//  College Profile Bulider
//
//  Created by Jen on 2/7/17.
//  Copyright © 2017 JenMachuca. All rights reserved.
//

import UIKit

class College: NSObject {
    
    var name = String()
    var location = String()
    var numberOfStudents = Int()
    var image = Data ()

convenience init(name: String, location: String, numberOfStudents: Int, image: Data) {
    self.init()
    self.name = name
    self.location = location
    self.numberOfStudents = numberOfStudents
    self.image = image
    
}

}
