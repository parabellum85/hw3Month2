//
//  computer.swift
//  hw3Month2
//
//  Created by Нурлан on 30/1/23.
//

import Foundation
class Computer {
    var cpu: String
    var motherBoard: String
    var gpu: String
    init(cpu: String, motherBoard: String, gpu: String) {
        self.cpu = cpu
        self.motherBoard = motherBoard
        self.gpu = gpu
    }
}
class Laptop:Computer {
    var power: String
    init(power:String,cpu: String, motherBoard: String, gpu: String) {
        self.power = power
        super.init(cpu: cpu, motherBoard: motherBoard, gpu: gpu)
    }
}
class Phone:Computer {
    var magSafe: String
    init(magSafe:String,cpu: String, motherBoard: String, gpu: String) {
        self.magSafe = magSafe
        super.init(cpu: cpu, motherBoard: motherBoard, gpu: gpu)
    }
}
 
class RepairService {
    var repairservice: [Computer] = [Computer] ()
    init(repair: Computer) {
        self.repairservice = [repair]
    }
        func countReapir() {
            for i in repairservice {
                
                if i is Laptop {
                    print("\(i.gpu), \(i.motherBoard), \(i.cpu), ")
                 
                }
                if i is Phone {
                    print("\(i.motherBoard), \(i.cpu), \(i.gpu) ")

            }
        }
    }
}
//var repairPhone = Phone(magSafe: "Magsave", cpu: "Cpu", motherBoard: "MotherBoard", gpu: "Gpu")
//var repairLaptop = Laptop(power: "Power 200", cpu: "Cpu", motherBoard: "MotherBoard", gpu: "Gpu")
//var computer = Computer(cpu: "Cpu", motherBoard: "MotherBoard", gpu: "Gpu")
//var serviceRepair = RepairService(repair: repairPhone)
//var repairService = RepairService(repair: repairLaptop)

