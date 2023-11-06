//
//  User.swift
//  BakimKarti
//
//  Created by Ali Osman GÖK on 2.11.2023.
//

import Foundation

class User {
    var id: UUID
    var firstName: String
    var lastName: String
    var company: Company
    
    init(firstName: String, lastName: String, company: Company) {
        self.id = UUID()
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
    }
}


class Company {
    var id: UUID
    var companyName: String
    var designation: String
    
    init(companyName: String, designation: String) {
        self.id = UUID()
        self.companyName = companyName
        self.designation = designation
    }
}
