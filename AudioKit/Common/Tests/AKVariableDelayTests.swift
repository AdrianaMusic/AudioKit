//
//  AKVariableDelayTests.swift
//  AudioKitTestSuite
//
//  Created by Aurelius Prochazka on 8/9/16.
//  Copyright © 2017 Aurelius Prochazka. All rights reserved.
//

import AudioKit
import XCTest

class AKVariableDelayTests: AKTestCase {

    override func setUp() {
        super.setUp()
        duration = 2.0 // needs to be this long since the default time is one second
    }

    func testDefault() {
        output = AKVariableDelay(input)
        AKTestMD5("9df204fbc98bb8965081cb30a89715fc")
    }

    func testParametersSetOnInit() {
        output = AKVariableDelay(input, time: 0.123_4, feedback: 0.95)
        AKTestMD5("0f1ceccfe3fdf76dffd588771b9baf6f")
    }

    func testParametersSetAfterInit() {
        let effect = AKVariableDelay(input)
        effect.time = 0.123_4
        effect.feedback = 0.95
        output = effect
        AKTestMD5("0f1ceccfe3fdf76dffd588771b9baf6f")
    }

}
