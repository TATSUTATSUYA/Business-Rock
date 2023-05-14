import UIKit


struct SignColor{
    var go: String
    var stop: String
    var goStop: String
}
let sign = SignColor(go: "blue",stop: "red",goStop: "yellow")

print(sign.go)
if sign.go == sign.go{
    sleep(2)
    print("押しボタンが押されました")
}
sleep(7)
print(sign.goStop)
sleep(4)
print(sign.stop)
sleep(8)
print(sign.go)



