// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

import AudioKit
import XCTest

class TransientShaperTests: XCTestCase {

    func testDefault() {
        let engine = AudioEngine()
        let input = Oscillator(amplitude: 2.0)
        engine.output = TransientShaper(input)
        input.start()
        let audio = engine.startTest(totalDuration: 1.0)
        audio.append(engine.render(duration: 1.0))
        testMD5(audio)
    }

    func testInputAmount() {
        let engine = AudioEngine()
        let input = Oscillator(amplitude: 2.0)
        engine.output = TransientShaper(input, inputAmount: -20.0)
        input.start()
        let audio = engine.startTest(totalDuration: 1.0)
        audio.append(engine.render(duration: 1.0))
        testMD5(audio)
    }

    func testOutputAmount() {
        let engine = AudioEngine()
        let input = Oscillator(amplitude: 2.0)
        engine.output = TransientShaper(input, outputAmount: -20.0)
        input.start()
        let audio = engine.startTest(totalDuration: 1.0)
        audio.append(engine.render(duration: 1.0))
        testMD5(audio)
    }

    func testAttackAmount() {
        let engine = AudioEngine()
        let input = Oscillator(amplitude: 2.0)
        engine.output = TransientShaper(input, attackAmount: 1.0)
        input.start()
        let audio = engine.startTest(totalDuration: 1.0)
        audio.append(engine.render(duration: 1.0))
        testMD5(audio)
    }

    func testReleaseAmount() {
        let engine = AudioEngine()
        let input = Oscillator(amplitude: 2.0)
        engine.output = TransientShaper(input, releaseAmount: 1.0)
        input.start()
        let audio = engine.startTest(totalDuration: 1.0)
        audio.append(engine.render(duration: 1.0))
        testMD5(audio)
    }

    func testParameters() {
        let engine = AudioEngine()
        let input = Oscillator(amplitude: 2.0)
        engine.output = TransientShaper(input,
                                        inputAmount: -1.0,
                                        attackAmount: -3.0,
                                        releaseAmount: 1.0,
                                        outputAmount: 0.0)
        input.start()
        let audio = engine.startTest(totalDuration: 1.0)
        audio.append(engine.render(duration: 1.0))
        testMD5(audio)
    }

}
