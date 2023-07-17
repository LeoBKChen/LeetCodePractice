import Foundation
import Dispatch

let delayQueue = DispatchQueue(label: "delayQueue")
print("Before: \(Date())")
delayQueue.asyncAfter(deadline: DispatchTime.now() + 2) {
    let currentQueueLabel = String(validatingUTF8: __dispatch_queue_get_label(nil))
    print("Current Queue: \(currentQueueLabel ?? "")")
    print("After: \(Date())")
}

// Quality of service(QoS)介紹及應用
let queue1 = DispatchQueue.global(qos: DispatchQoS.QoSClass.userInteractive) // 最高順位
let queue2 = DispatchQueue.global(qos: DispatchQoS.QoSClass.unspecified) // 最低順位

queue1.async {
    for i in 1...10 {
        print("queue1: \(i)")
    }
}

queue2.async {
    for j in 100...110 {
        print("queue2: \(j)")
    }
}

//let group: DispatchGroup = DispatchGroup()
//
//group.notify(queue: DispatchQueue.main) {
//    // 完成所有 Call 後端 API 的動作
//    print("完成所有 Call 後端 API 的動作...")
//}
//
//let queue1 = DispatchQueue(label: "queue1", attributes: .concurrent)
//group.enter() // 開始呼叫 API1
//queue1.async(group: group) {
//    // Call 後端 API1
//
//    //    ...
//    // 結束呼叫 API1
//    group.leave()
//}
//
//let queue2 = DispatchQueue(label: "queue2", attributes: .concurrent)
//group.enter() // 開始呼叫 API2
//queue2.async(group: group) {
//    // Call 後端 API2
//    //    ...
//    // 結束呼叫 API2
//    group.leave()
//}

let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)

concurrentQueue.sync {
    for i in 1 ... 10 {
        print("i: \(i)")
    }
}

concurrentQueue.sync {
    for j in 11 ... 20 {
        print("j: \(j)")
    }
}

concurrentQueue.sync {
    for j in 21 ... 30 {
        print("j: \(j)")
    }
}

struct Counter {
    public var value = 0
    mutating func increment() {
//        print("inner incre, value:\(value)")
        value += 1
    }
}

var counter = Counter()

DispatchQueue.concurrentPerform(iterations: 10) { _ in
    for _ in 0..<2000 {
        counter.increment()
    }
//    print("one iter, count:\(counter.value)")
}

print("outer print: \(counter.value)")


class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class RecipeIngredient: Food {
    var quantity: Int
    
    // **another initializer(s) are added here**
    init(name: String, quantity: Int) {
        
        
        self.quantity = quantity
        super.init(name: name)
    }
}


let queue = DispatchQueue(label: "myQueue")
print("a")
queue.sync {
    print("b")
    queue.async {
        print("c")
    }
    print("d")
}
print("e")
