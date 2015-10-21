import QtQuick 2.2

Item {
    id: tipsIcon

    property bool readyValue: CarStatus.ready
    property int safetyBeltWarningValue: CarStatus.seatBeltLight
    property int airBagValue: CarStatus.airBag
    property bool absErrValue: CarStatus.absLight
    property bool parkingBrakeErrValue: CarStatus.parkingBrakeErr
    property bool sysBattErrValue: CarStatus.accumulatorLight
    property bool fogRearLampValue: CarStatus.fogRearLamp
    property bool motorHotValue: CarStatus.generatorFault
    property bool fogFrontLampValue: CarStatus.fogFrontLamp
    property bool positionLampValue: CarStatus.positionLight
    property bool parkingBrakeValue: CarStatus.parkingBrake
    property bool motorErr___1Value: CarStatus.engineErrLight
    property int engineOilLightValue: CarStatus.oilPressureLight
    property bool tirePressWarningValue: CarStatus.tirePressure
    property bool sysBattWarningErrValue: CarStatus.batteryFault
    property bool highBeamLightValue: CarStatus.highBeamLight
    property bool gearboxLightValue: CarStatus.gearBoxFault
    property bool rightLampValue: CarStatus.leftLamp
    property bool motorErrValue: CarStatus.vehicleFailure
    property bool fixWarningValue: CarStatus.engineSVSErr
    property int powerSteerErrLightValue: CarStatus.epsFault
    property bool leftLampValue: CarStatus.rightLamp
    property bool epcValue: CarStatus.epc
    property bool waterTempWarningValue: CarStatus.eleMotorCoolantHighTemp || CarStatus.engineCoolantHighTemp
    property bool oilwarningValue: CarStatus.fuel < 100 / 8
    property bool chargeWarningValue: CarStatus.soc <= 30
    property bool sysBattWarningValue: CarStatus.dynamicElectricityCut
    property bool carDoorValue: CarStatus.rfDoor || CarStatus.lfDoor || CarStatus.rrDoor || CarStatus.lrDoor ||
                                CarStatus.trunkDoor || CarStatus.hoodDoor
    property bool chargeErrValue: CarStatus.chargeState == 4
    property bool chargingLineValue: CarStatus.chargingLine

    Item {
        id: lights
        opacity: 1.0

        Image {
            id: ready
            x: 894
            y: 25
            opacity: readyValue == 1 ? 1.0 : 0.0
            width: 109
            height: 31
            source: "qrc:/images/images/lights/READY.png"
        }
        Image {
            id: safetyBeltWarning
            x: 1820
            y: 610
            //            opacity: safetyBeltWarningValue == 1 ? 1.0 : 0.0
            width: 43
            height: 48
            source: "qrc:/images/images/lights/SafetyBeltWarning.png"
            property int safetyBeltWarningValue2: safetyBeltWarningValue
            visible: false

            onSafetyBeltWarningValue2Changed: {
                switch(safetyBeltWarningValue2) {
                case 1:
                    safetyBeltWarningFlicker.running = false;
                    safetyBeltWarning.visible = true;
                    break;
                case 2:
                    safetyBeltWarningFlicker.running = true;
                    safetyBeltWarning.visible = true;
                    break;
                default:
                    safetyBeltWarningFlicker.running = false;
                    safetyBeltWarning.visible = false;
                    break;
                }
            }

            Timer {
                id: safetyBeltWarningFlicker
                interval: 500
                running: false
                repeat: true
                onTriggered: {
                    safetyBeltWarning.visible = !safetyBeltWarning.visible;
                }
            }
        }
        Image {
            id: airBag
            x: 1706
            y: 11
            //            opacity: airBagValue == 1 ? 1.0 : 0.0
            width: 52
            height: 46
            source: "qrc:/images/images/lights/airBag.png"
            property int airBagValue2: airBagValue
            visible: false

            onAirBagValue2Changed: {
                switch(airBagValue2) {
                case 1:
                    airBagFlicker.running = false;
                    airBag.visible = true;
                    break;
                case 2:
                    airBagFlicker.running = true;
                    airBag.visible = true;
                    break;
                default:
                    airBagFlicker.running = false;
                    airBag.visible = false;
                    break;
                }
            }

            Timer {
                id: airBagFlicker
                interval: 500
                running: false
                repeat: true
                onTriggered: {
                    airBag.visible = !airBag.visible;
                }
            }
        }
        Image {
            id: absErr
            x: 1766
            y: 66
            opacity: absErrValue == 1 ? 1.0 : 0.0
            width: 50
            height: 40
            source: "qrc:/images/images/lights/absErr.png"
        }
        Image {
            id: parkingBrakeErr
            x: 840
            y: 672
            opacity: parkingBrakeErrValue == 1 ? 1.0 : 0.0
            width: 45
            height: 36
            source: "qrc:/images/images/lights/ParkingBrakeErr.png"
        }
        Image {
            id: sysBattErr
            x: 1036
            y: 672
            opacity: sysBattErrValue == 1 ? 1.0 : 0.0
            width: 55
            height: 34
            source: "qrc:/images/images/lights/sysBattErr.png"
        }
        Image {
            id: fogRearLamp
            x: 24
            y: 130
            opacity: fogRearLampValue == 1 ? 1.0 : 0.0
            width: 61
            height: 33
            source: "qrc:/images/images/lights/fogRearLamp.png"
        }
        Image {
            id: motorHot
            x: 1107
            y: 662
            opacity: motorHotValue == 1 ? 1.0 : 0.0
            width: 54
            height: 46
            source: "qrc:/images/images/lights/motorHot.png"
        }
        Image {
            id: fogFrontLamp
            x: 81
            y: 74
            opacity: fogFrontLampValue == 1 ? 1.0 : 0.0
            width: 64
            height: 34
            source: "qrc:/images/images/lights/fogFrontLamp.png"
        }
        Image {
            id: positionLamp
            x: 30
            y: 24
            opacity: positionLampValue == 1 ? 1.0 : 0.0
            width: 67
            height: 36
            source: "qrc:/images/images/lights/positionLamp.png"
        }
        Image {
            id: parkingBrake
            x: 1763
            y: 672
            opacity: parkingBrakeValue == 1 ? 1.0 : 0.0
            width: 44
            height: 34
            source: "qrc:/images/images/lights/ParkingBrake.png"
        }
        Image {
            id: motorErr___1
            x: 68
            y: 629
            opacity: motorErr___1Value == 1 ? 1.0 : 0.0
            width: 53
            height: 35
            source: "qrc:/images/images/lights/motorErr___1.png"
        }
        Image {
            id: engineOilLight
            x: 123
            y: 670
            //            opacity: engineOilLightValue == 1 ? 1.0 : 0.0
            width: 73
            height: 33
            source: "qrc:/images/images/lights/engineOilLight.png"
            property int engineOilLightValue2: engineOilLightValue
            visible: false

            onEngineOilLightValue2Changed: {
                switch(engineOilLightValue2) {
                case 1:
                    engineOilLightFlicker.running = false;
                    engineOilLight.visible = true;
                    break;
                case 2:
                    engineOilLightFlicker.running = true;
                    engineOilLight.visible = true;
                    break;
                default:
                    engineOilLightFlicker.running = false;
                    engineOilLight.visible = false;
                    break;
                }
            }

            Timer {
                id: engineOilLightFlicker
                interval: 500
                running: false
                repeat: true
                onTriggered: {
                    engineOilLight.visible = !engineOilLight.visible;
                }
            }
        }
        Image {
            id: tirePressWarning
            x: 1847
            y: 102
            opacity: tirePressWarningValue == 1 ? 1.0 : 0.0
            width: 43
            height: 39
            source: "qrc:/images/images/lights/tirePressWarning.png"
        }
        Image {
            id: sysBattWarningErr
            x: 772
            y: 673
            opacity: sysBattWarningErrValue == 1 ? 1.0 : 0.0
            width: 57
            height: 33
            source: "qrc:/images/images/lights/sysBattWarningErr.png"
        }
        Image {
            id: highBeamLight
            x: 157
            y: 25
            opacity: highBeamLightValue == 1 ? 1.0 : 0.0
            width: 58
            height: 33
            source: "qrc:/images/images/lights/highBeamLight.png"
        }
        Image {
            id: gearboxLight
            x: 721
            y: 670
            opacity: gearboxLightValue == 1 ? 1.0 : 0.0
            width: 41
            height: 40
            source: "qrc:/images/images/lights/gearboxLight.png"
        }
        Image {
            id: leftLamp
            x: 1230
            y: 15
            opacity: leftLampValue == 1 ? 1.0 : 0.0
            width: 45
            height: 49
            source: "qrc:/images/images/lights/leftLamp.png"
        }
        Image {
            id: motorErr
            x: 958
            y: 668
            opacity: motorErrValue == 1 ? 1.0 : 0.0
            width: 68
            height: 38
            source: "qrc:/images/images/lights/motorErr.png"
        }
        Image {
            id: fixWarning
            x: 26
            y: 671
            opacity: fixWarningValue == 1 ? 1.0 : 0.0
            width: 68
            height: 29
            source: "qrc:/images/images/lights/fixWarning.png"
        }
        Image {
            id: powerSteerErrLight
            x: 1845
            y: 16
            //            opacity: powerSteerErrLightValue == 1 ? 1.0 : 0.0
            width: 54
            height: 41
            source: "qrc:/images/images/lights/powerSteerErrLight.png"
            property int powerSteerErrLightValue2: powerSteerErrLightValue
            visible: false

            onPowerSteerErrLightValue2Changed: {
                switch(powerSteerErrLightValue2) {
                case 1:
                    powerSteerErrLightFlicker.running = false;
                    powerSteerErrLight.visible = true;
                    break;
                case 2:
                    powerSteerErrLightFlicker.running = true;
                    powerSteerErrLight.visible = true;
                    break;
                default:
                    powerSteerErrLightFlicker.running = false;
                    powerSteerErrLight.visible = false;
                    break;
                }
            }

            Timer {
                id: powerSteerErrLightFlicker
                interval: 500
                running: false
                repeat: true
                onTriggered: {
                    powerSteerErrLight.visible = !powerSteerErrLight.visible;
                }
            }
        }
        Image {
            id: rightLamp
            x: 666
            y: 11
            opacity: rightLampValue == 1 ? 1.0 : 0.0
            width: 45
            height: 49
            source: "qrc:/images/images/lights/rightLamp.png"
        }
        Image {
            id: epc
            x: 27
            y: 593
            opacity: epcValue == 1 ? 1.0 : 0.0
            width: 51
            height: 24
            source: "qrc:/images/images/lights/EPC.png"
        }
        Image {
            id: waterTempWarning
            x: 1169
            y: 667
            opacity: waterTempWarningValue == 1 ? 1.0 : 0.0
            width: 42
            height: 38
            source: "qrc:/images/images/lights/waterTempWarning.png"
        }
        Image {
            id: oilwarning
            x: 1225
            y: 669
            opacity: oilwarningValue == 1 ? 1.0 : 0.0
            width: 36
            height: 37
            source: "qrc:/images/images/lights/oilwarning.png"
        }
        Image {
            id: chargeWarning
            x: 676
            y: 670
            opacity: chargeWarningValue == 1 ? 1.0 : 0.0
            width: 34
            height: 38
            source: "qrc:/images/images/lights/chargeWarning.png"
        }
        Image {
            id: sysBattWarning
            x: 896
            y: 666
            opacity: sysBattWarningValue == 1 ? 1.0 : 0.0
            width: 53
            height: 40
            source: "qrc:/images/images/lights/sysBattWarning.png"
        }
        Image {
            id: carDoor
            x: 1860
            y: 556
            opacity: carDoorValue == 1 ? 1.0 : 0.0
            width: 42
            height: 40
            source: "qrc:/images/images/lights/carDoor.png"
        }
        Image {
            id: chargeErr
            x: 1851
            y: 672
            opacity: chargingLineValue == 1 ? 1.0 : 0.0
            width: 51
            height: 32
            source: "qrc:/images/images/lights/chargeErr.png"
        }
    }


    states: [
        State {
            name: ""
        },
        State {
            name: "show"
        }
    ]

    transitions: [
        Transition {
            from: ""
            to: "show"
            SequentialAnimation {
            }
        },
        Transition {
            from: "show"
            to: ""
            SequentialAnimation {
            }
        }
    ]
    Component.onCompleted: {
        tipsIcon.state = "show"
    }
}
