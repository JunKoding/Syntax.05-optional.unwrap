import Cocoa

// 스위프트 기초 문법 05 - Unwrap 옵셔널변수
//옵셔널 - 값이 있는지 없는지 모른다. ?를 써서 표현한다.

var someVariable: Int? = nil

if someVariable == nil { // 만약 값이 없다면 90을 넣는다.
    someVariable = 90 // 값이 들어가긴 했지만 옵셔널인 상태.
}
print("someVariable: \(someVariable)")
// 90(optional)


// 언랩핑 - 랩 즉 감싸져있는 것을 벗기는 것, 옵셔널을 벗긴다.
//if let, guard let으로 할 수 있다.

if let otherVariable = someVariable {
    print("언랩핑 되었다. 즉 값이 있다. otherVariable: \(otherVariable)")
} else {
    print("값이 없다.")
}
// 언랩핑 되었다. 즉 값이 있다. otherVariable: 90



print("#####################################################################################")



someVariable = nil
// someVariable 이 비어있으면, 즉 값이 없으면 기본값으로 이놈을 넣겠다.

let myValue = someVariable ?? 10
print("myValue: \(myValue)")



print("#####################################################################################")



func unwrap(_ parameter: Int?) {
    print("unwrap() called")
    // 값이 없으면 리턴 해버린다.
    // 즉 지나간다.
    guard let unWrappedParam = parameter else {
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}

var firstValue: Int? = 30
var secondValue: Int? = 50

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")
//firstValue: Optional(30)
//secondValue: Optional(50)

unwrap(firstValue)
unwrap(secondValue)
//unwrap() called
//unWrappedParam: 30
//unwrap() called
//unWrappedParam: 50
