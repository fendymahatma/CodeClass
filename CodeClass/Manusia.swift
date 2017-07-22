//
//  Manusia.swift
//  CodeClass
//
//  Created by kliklabs indo kreasi on 7/20/17.
//  Copyright © 2017 kliklabs. All rights reserved.
//

import Foundation

class Manusia: NSObject {
    var nama: String
    var umur: Int
    var berat: Double

    init(nama:String, umur:Int, berat:Double ) {
        self.nama = nama
        self.umur = umur
        self.berat = berat
    }
}