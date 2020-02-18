
@propertyWrapper
struct Wrapper<Value> {
    var wrappedValue: Value?
}

func ifLet<Value, Result>(_ value: Value?, then: (Value) -> Result) -> Result? {
    value.map(then)
}

struct Foo {

    @Wrapper var value: Int?

    // Gives the following compiler error:
    // Cannot convert value 'value' of type 'String?' to expected type
    // 'Wrapper<String>?', use wrapper instead
    var bar: String? { ifLet(value, then: { String($0) }) }

    // This works fine.
    var baz: String? { ifLet(_value.wrappedValue, then: { String($0) }) }

    // And this works too.
    var qux: String? { ifLet(value as Int?, then: { String($0) }) }
}
