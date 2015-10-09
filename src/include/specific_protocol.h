#ifndef SPECIFIC_PROTOCOL_H
#define SPECIFIC_PROTOCOL_H

#include <stdint.h>

/*
 * car special information
 */
typedef struct {
    uint8_t
        leftLamp                : 1,
        rightLamp               : 1,
        fogFrontLamp            : 1,
        fogRearLamp             : 1,
        highBeamLight           : 1,
        dippedHeadlight         : 1,
        airBag                  : 1,
        masterStrapLight        : 1;
    uint8_t
        viceStrapLight          : 1,
        parkingBrakeErr         : 1,
        parkingBrake            : 1,
        accumulatorLight        : 1,
        absLight                : 1,
        positionLight           : 1,
        oilPressureLight        : 1,
        engineErrLight          : 1;
    uint8_t
        epsFault                : 1,
        gearBoxFault            : 1,
        tirePressure            : 1,
        epc                     : 1,
        engineSVSErr            : 1,
        vehicleFailure          : 1,
        batteryFault            : 1,
        generatorFault          : 1;
    uint8_t
        chargingLine            : 1,
        eleMotorCoolantHighTemp : 1,
        engineCoolantHighTemp   : 1,
        dynamicElectricityCut   : 1,
        ready                   : 1,
        chargeState             : 3;
    uint8_t
        coolantCurrentTemp;
    uint8_t
        generatorPower;
}__attribute__((packed)) SpecialInfo;

/*
 * special frame sent by MCU
 */
typedef struct {
    uint8_t head;
    uint8_t length;
    uint16_t crc;
    uint32_t magic;
    SpecialInfo specialInfo;
    uint8_t tail;
}__attribute__((packed)) SpecialFrame;

/*
 * car special settings information
 */
typedef struct {
//    uint8_t
//        commandRequest      : 1,
//        closeScreenRequest  : 1,
//        tripClear           : 1,
//        avgSpeedClear       : 1,
//        avgFuelClear        : 1,
//        reserveData         : 2,
//        engineeringModel    : 1;
//    uint8_t picVoiceSync;
//    uint8_t picVoiceSyncReserve;
//    uint8_t reserve;
//    uint32_t dateTimeSetting;
}__attribute__((packed)) SpecSettingsInfo;

/*
 * special settings frame sent by CORE
 */
typedef struct {
    uint8_t head;
    uint8_t length;
    uint16_t crc;
    uint32_t magic;
    SpecSettingsInfo specSettingsInfo;
    uint8_t tail;
}__attribute__((packed)) SpecSettingsFrame;

/*
 * byte length for frame
 */
#define SPECIAL_INFO_LEN       (const int)(sizeof(SpecialInfo))
#define SPECIAL_FRAME_LEN      (const int)(sizeof(SpecialFrame))
#define SPECSETTINGS_INFO_LEN  (const int)(sizeof(SpecSettingsInfo))
#define SPECSETTINGS_FRAME_LEN (const int)(sizeof(SpecSettingsFrame))

#endif // SPECIFIC_PROTOCOL_H
