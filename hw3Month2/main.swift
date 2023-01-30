//
//  main.swift
//  hw3Month2
//
//  Created by Нурлан on 30/1/23.
//

import Foundation

print("Hello, World!")
//cоздать базовый класс – компьютер(родитель), придумать общие параметры. Производные(наследники) – ноутбук и смартфон, добавить по 1 параметру, отличающиеся. Создать класс РемонтСервис, который может содержать оба вида объектов в одной переменной(ноутбук и смартфон), предусмотреть функцию подсчета отдельно ремонтируемых ноутбуков и смартфонов (использовать оператор is). Функция должна распечатать информацию в следующем виде: "на сервисе 5 ноутбуков и 10 смартфонов". В main создать необходимые объекты и вызвать функцию.


var repairPhone = Phone(magSafe: "Magsave", cpu: "Cpu", motherBoard: "MotherBoard", gpu: "Gpu")
var repairLaptop = Laptop(power: "Power 200", cpu: "Cpu", motherBoard: "MotherBoard", gpu: "Gpu")
var computer = Computer(cpu: "Cpu", motherBoard: "MotherBoard", gpu: "Gpu")
var serviceRepair = RepairService(repair: repairPhone)
var repairService = RepairService(repair: repairLaptop)
var repair:[Computer] = [repairPhone,repairLaptop]
serviceRepair.countReapir()
repairService.countReapir()
print(repair.count)
