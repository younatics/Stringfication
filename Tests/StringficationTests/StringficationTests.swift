//
//  StringficationTests.swift
//  StringficationTests
//
//  Deterministic tests for the Mirror-based property/value extraction. These
//  are pure Foundation and run headlessly.
//

import XCTest
@testable import Stringfication

private struct Person: Stringfication {
    let name: String
    let age: Int
    let nickname: String?
}

final class StringficationTests: XCTestCase {

    func testPropertiesListsStoredNames() {
        let person = Person(name: "Kyle", age: 30, nickname: "K")
        XCTAssertEqual(person.stringfication.properties(), ["name", "age", "nickname"])
    }

    func testValuesUnwrapsAndStringifies() {
        let person = Person(name: "Kyle", age: 30, nickname: "K")
        let values = person.stringfication.values()
        XCTAssertEqual(values, ["Kyle", "30", "K"])
    }

    func testNilOptionalIsOmittedFromValues() {
        let person = Person(name: "Kyle", age: 30, nickname: nil)
        // A nil optional produces "nil" internally and is dropped.
        XCTAssertEqual(person.stringfication.values(), ["Kyle", "30"])
    }

    func testAllCombinesPropertiesAndValues() {
        let person = Person(name: "A", age: 1, nickname: nil)
        let all = person.stringfication.all()
        XCTAssertEqual(all, ["name", "age", "nickname", "A", "1"])
    }
}
