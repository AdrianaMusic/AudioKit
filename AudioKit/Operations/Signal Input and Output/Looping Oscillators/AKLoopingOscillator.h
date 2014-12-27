//
//  AKLoopingOscillator.h
//  AudioKit
//
//  Created by Aurelius Prochazka on 6/16/12.
//  Copyright (c) 2012 Aurelius Prochazka. All rights reserved.
//

#import "AKAudio.h"
#import "AKParameter+Operation.h"
#import "AKSoundFile.h"

/** Read sampled sound (mono or stereo) from a table, with
 optional sustain and release looping, using cubic interpolation.
 
 @warning *Not fully implemented yet:* Currently no
 optional parameters are implemented.
 */

@interface AKLoopingOscillator : AKAudio

/// Simplest initialization with a given file.
/// @param fileTable Typically sampled sound segment with prescribed looping points. The source file may be mono or stereo.
- (instancetype)initWithSoundFileTable:(AKSoundFile *)fileTable;

/// Initialization with a given file and amplitude
/// @param fileTable Typically sampled sound segment with prescribed looping points. The source file may be mono or stereo.
/// @param amplitude Output of the signal in relation to the 0dB full scale amplitude.
- (instancetype)initWithSoundFileTable:(AKSoundFile *)fileTable
                             amplitude:(AKParameter *)amplitude;

/// Initialization with a given file and amplitude and scale the frequency.
/// @param fileTable           Typically sampled sound segment with prescribed looping points. The source file may be mono or stereo.
/// @param amplitude           Output of the signal in relation to the 0dB full scale amplitude.
/// @param frequencyMultiplier Relative to a base frequency of 1.
- (instancetype)initWithSoundFileTable:(AKSoundFile *)fileTable
                   frequencyMultiplier:(AKControl *)frequencyMultiplier
                             amplitude:(AKParameter *)amplitude;



/// Initialization with a given file and amplitude and scale the frequency.
/// @param fileTable           Typically sampled sound segment with prescribed looping points. The source file may be mono or stereo.
/// @param frequencyMultiplier Relative to a base frequency of 1.
/// @param amplitude           Output of the signal in relation to the 0dB full scale amplitude.
/// @param type                Behavior of the loop, no loop, normal, or forward and back
- (instancetype)initWithSoundFileTable:(AKSoundFile *)fileTable
                   frequencyMultiplier:(AKControl *)frequencyMultiplier
                             amplitude:(AKParameter *)amplitude
                                  type:(AKLoopingOscillatorType)type;

@end
