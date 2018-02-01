//
//  Car.swift
//  Mi Garaje
//
//  Created by Francisco Jose Sanchez Tapia on 22/1/18.
//  Copyright © 2018 Francisco Jose Sanchez Tapia. All rights reserved.
//

import Foundation
import UIKit

//Creamos una clase
class Car: NSObject {
    var cv: Int!
    var marca: String!
    var modelo: String!
    var color: UIColor!
    var kms: Double!
    var image: UIImage?
    
    override var description: String {
        return "Mi coche es un \(marca!) \(modelo!), tiene \(cv!) caballos de potencia y llevo hechos \(kms!) kms"
    }
    
    //Constructor por defecto
    override init() {
        cv = 0
        marca = "Desconocida"
        modelo = "Desconocido"
        color = #colorLiteral(red: 0.9289160967, green: 0.2195327878, blue: 0.1987535059, alpha: 1)
        kms = 0.0
    }
    
    init(cv: Int, marca: String, modelo: String, color: UIColor, kms: Double, imageName: String?) {
        self.cv = cv
        self.marca = marca
        self.modelo = modelo
        self.color = color
        self.kms = kms
        
        if let imageName = imageName {
            self.image = UIImage(named: imageName)
        }
    }
    
}
