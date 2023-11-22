import Foundation
import Dispatch
import Combine

// 创建一个 PassthroughSubject 用于模拟发布者，发布的元素类型是 Optional<String>
//let myPublisher = PassthroughSubject<String, Never>()

let timer = Timer.publish(every: 3.0, on: .main, in: .common)
    .autoconnect()
    .map { _ in "timer send string" }

let filterTimer = Timer.publish(every: 1.3, on: .main, in: .common)
    .autoconnect()
    .map { _ in Bool.random() }
//let combinedPublisher = Publishers.Merge(myPublisher, timer)

// 订阅 combinedPublisher 来接收过滤后的值
let cancellable = timer.combineLatest(filterTimer)
    .print("combineLatest")
    .sink { string, filter in
        if (filter) {
            print("Received string: \(string)")
        }
        else {
            print("rejected with: \(filter), string:\(string)")
        }
    }

// 模拟发布一些值
//myPublisher.send("Value 1")
//myPublisher.send("Value 2")
//
//// 等待一段时间，这段时间内不会接收到值
//RunLoop.main.run(until: Date(timeIntervalSinceNow: 4.0))
//
//// 三秒后，可以接收到 nil 值
//myPublisher.send(nil)
//
//// 等待一段时间，这段时间内不会接收到值
//RunLoop.main.run(until: Date(timeIntervalSinceNow: 4.0))
//myPublisher.send("Value 2")
//// 取消订阅
//cancellable.cancel()


// 創建一個測試用的 Combine publisher，這個 publisher 會在三秒後發出一個非 nil 值
let testPublisher = Timer.publish(every: 1.2, on: .main, in: .default)
    .autoconnect()
    .map { _ in Int.random(in: 0..<2) == 0 ? nil : Int.random(in: 1..<100) }
    .eraseToAnyPublisher()

// 監聽並處理 Combine publisher
let cancellable = testPublisher
//    .debounce(for: 3.0, scheduler: RunLoop.main)
    .filter { $0 != nil }
    .sink { value in
        if let nonNilValue = value {
            print("Received non-nil value: \(nonNilValue)")
        } else {
            print("Received nil value within the debounce window.")
        }
    }

// 取消監聽
// cancellable.cancel()

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
