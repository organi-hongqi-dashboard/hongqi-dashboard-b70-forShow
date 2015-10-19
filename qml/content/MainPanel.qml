import QtQuick 2.2

Item {
    id: mainPanel

    property bool valueDisplayMode: CarStatus.displayMode

    property int valueKw: CarStatus.generatorPower
    property int valueSpeed: CarStatus.speed
    property int valueGear: CarStatus.gear
    property int valueGearMode: CarStatus.gearMode
    property int valueTotalMileage: CarStatus.odo
    property real valueTrip: CarStatus.trip1 * 0.1
    property real valueTemp: CarStatus.outTemp
    property string valueTime: CarStatus.time
    property real valueDisplayContent1: CarStatus.avgFuel * 0.1
    property real valueDisplayContent2: CarStatus.instantaneousFuel * 0.1
    property int valueDisplayContent3: CarStatus.remainMileage
    property int nameAvgFuel: CarStatus.avgFuel
    property int nameInstantaneousFuelUint: CarStatus.instantaneousFuel
    property bool avgFuelUint: CarStatus.avgFuelUnit
    property bool instantaneousFuelUint: CarStatus.instantaneousFuelUnit
    property bool valueRightFrontDoor: CarStatus.rfDoor
    property bool valueLeftFrontDoor: CarStatus.lfDoor
    property bool valueRightRearDoor: CarStatus.rrDoor
    property bool valueLeftRearDoor: CarStatus.lrDoor
    property bool valueLuggageCover: CarStatus.trunkDoor
    property bool valueHood: CarStatus.hoodDoor
    property int valueChargeState: CarStatus.chargeState

    property int valueBatteryPower: CarStatus.soc
    property string textBatteryPower: valueBatteryPower + "%"
    property int valueFule: CarStatus.fuel
    property int valueFuleLastTime: CarStatus.fuel
    property int vEngineCoolantCurrentTemp: CarStatus.coolantCurrentTemp
    property int valueWaterTemp: CarStatus.waterTemp

    // lights
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
        id: normalMode
        visible: valueDisplayMode == false

        Image {
            id: background
            x: -44
            y: 0
            opacity: 1.0
            source: "qrc:/images/images/background.png"
        }


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



        // module displayWindow
        Item {
            id: displayWindow
            opacity: (carDoorValue == 0) ? 1.0 : 0.0   // no door open

            Image {
                id: mainWindow
                x: 752
                y: 229
                opacity: 1.0
                source: "qrc:/images/images/displayWindow/mainWindow.png"
            }
            //        Image {
            //            id: icon6P5
            //            x: 970
            //            y: 274
            //            opacity: 1.0
            //            source: "qrc:/images/images/displayWindow/icon6.5.png"
            //        }

            Image {
                id: lPerHContent1
                x: 971
                y: 302
                opacity: avgFuelUint == 0 ? 1.0 : 0.0
                source: "qrc:/images/images/displayWindow/lPerH.png"
            }
            Image {
                id: lPerKmContent1
                x: 971
                y: 302
                opacity: avgFuelUint == 1 ? 1.0 : 0.0
                source: "qrc:/images/images/displayWindow/lPerKm.png"
            }
            Image {
                id: lPerKmContent2
                x: 969
                y: 373
                opacity: instantaneousFuelUint == 1 ? 1.0 : 0.0
                source: "qrc:/images/images/displayWindow/lPerKm.png"
            }
            Image {
                id: lPerHContent2
                x: 969
                y: 373
                opacity: instantaneousFuelUint == 0 ? 1.0 : 0.0
                source: "qrc:/images/images/displayWindow/lPerH.png"
            }

            Text {
                id: displayContent1
                x: 970
                y: 266
                font.italic: true
                font.pixelSize: 28
                color: "white"
//                text: (avgFuelUint == 1) ? "---" : valueDisplayContent1.toFixed(1)
                text: valueDisplayContent1.toFixed(1) == 0xFFFF * 0.1 ? "---" : valueDisplayContent1.toFixed(1)
            }
            //        Image {
            //            id: icon35P5
            //            x: 970
            //            y: 344
            //            opacity: 1.0
            //            source: "qrc:/images/images/displayWindow/icon35.5.png"
            //        }
            Text {
                id: displayContent2
                x: 970
                y: 336
                font.italic: true
                font.pixelSize: 28
                color: "white"
//                text: (nameInstantaneousFuelUint == 1) ? "---" : valueDisplayContent2.toFixed(1)
//                text: (nameInstantaneousFuelUint == 0xFFFF) ? "---" : valueDisplayContent2.toFixed(1)
                text: valueDisplayContent2.toFixed(1) == 0xFFFF * 0.1 ? "---" : valueDisplayContent2.toFixed(1)
            }

            //        Image {
            //            id: icon210
            //            x: 965
            //            y: 419
            //            opacity: 1.0
            //            source: "qrc:/images/images/displayWindow/icon210.png"
            //        }
            Text {
                id: displayContent3
                x: 965
                y: 411
                font.italic: true
                font.pixelSize: 28
                color: "white"
                text: valueDisplayContent3 == 0xFFFF ? "---" : valueDisplayContent3
            }
        }


        // module carDoorState
        Item {
            id: carDoorState
            opacity: carDoorValue == 1 ? 1.0 : 0.0

            Image {
                id: carPic
                x: 834
                y: 148
                opacity: 1.0
                source: "qrc:/images/images/carDoorState/carPic.png"
            }
            Image {
                id: rightFrontDoorOpen
                x: 1004
                y: 316
                opacity: valueRightFrontDoor == 1 ? 1.0 : 0.0
                source: "qrc:/images/images/carDoorState/rightFrontDoorOpen.png"
            }
            Image {
                id: leftFrontDoorOpen
                x: 852
                y: 316
                opacity: valueLeftFrontDoor == 1 ? 1.0 : 0.0
                source: "qrc:/images/images/carDoorState/leftFrontDoorOpen.png"
            }
            Image {
                id: rightRearDoorOpen
                x: 1002
                y: 390
                opacity: valueRightRearDoor == 1 ? 1.0 : 0.0
                source: "qrc:/images/images/carDoorState/rightRearDoorOpen.png"
            }
            Image {
                id: leftRearDoorOpen
                x: 865
                y: 390
                opacity: valueLeftRearDoor == 1 ? 1.0 : 0.0
                source: "qrc:/images/images/carDoorState/leftRearDoorOpen.png"
            }
            Image {
                id: luggageCoverOpen
                x: 913
                y: 494
                opacity: valueLuggageCover == 1 ? 1.0 : 0.0
                source: "qrc:/images/images/carDoorState/luggageCoverOpen.png"
            }
            Image {
                id: hoodOpen
                x: 901
                y: 225
                opacity: valueHood == 1 ? 1.0 : 0.0
                source: "qrc:/images/images/carDoorState/hoodOpen.png"
            }
        }

        // module dateTime
        Item {
            id: dateTime

            Image {
                id: dateTimeOutline
                x: 513
                y: 21
                opacity: 1.0
                source: "qrc:/images/images/dateTime/dateTimeOutline.png"
            }

            //    Image {
            //        id: numTemp
            //        x: 1324
            //        y: 25
            //        opacity: 1.0
            //        source: "qrc:/images/images/dateTime/numTemp.png"
            //    }
            Text {
                id: numTemp
                x: 1324
                //            y: 20
                y: 17
                font.italic: true
                font.bold: true
                font.pixelSize: 28
                color: "white"
                text: valueTemp.toFixed(0)
            }
            Image {
                id: iconC
                //        x: 1358
                anchors.left: numTemp.right
                anchors.leftMargin: 3
                y: 25
                opacity: 1.0
                source: "qrc:/images/images/dateTime/iconC.png"
            }

            //    Image {
            //        id: num59
            //        x: 602
            //        y: 25
            //        opacity: 1.0
            //        source: "qrc:/images/images/dateTime/num59.png"
            //    }

            //        Text {
            //            id: numTime
            //            x: 562
            //            y: 20
            //            font.italic: true
            //            font.bold: true
            //            font.pixelSize: 28
            //            color: "white"
            //            text: valueTime
            //        }
            //    Image {
            //        id: timeSplit
            //        x: 594
            //        y: 32
            //        opacity: 1.0
            //        source: "qrc:/images/images/dateTime/timeSplit.png"
            //    }
            //    Image {
            //        id: num23
            //        x: 562
            //        y: 25
            //        opacity: 1.0
            //        source: "qrc:/images/images/dateTime/num23.png"
            //    }
        }



        // module tripTotalMileage
        Item {
            id: tripTotalMileage

            Image {
                id: kMleft
                x: 723
                y: 610
                opacity: 1.0
                source: "qrc:/images/images/tripTotalMileage/KMleft.png"
            }
            Text {
                id: numTrip
                anchors.right: kMleft.left
                anchors.rightMargin: 3
                y: 600
                color: "black"
                font.italic: true
                font.pixelSize: 28
                text: valueTrip.toFixed(1)
            }

            Image {
                id: kMright
                x: 1228
                y: 610
                opacity: 1.0
                source: "qrc:/images/images/tripTotalMileage/KMright.png"
            }
            Text {
                id: numTotalMileage
                anchors.right: kMright.left
                anchors.rightMargin: 3
                y: 600
                color: "black"
                font.italic: true
                font.pixelSize: 28
                text: valueTotalMileage
            }

            Image {
                id: tripTotalMileageOut
                x: 599
                y: 634
                opacity: 1.0
                source: "qrc:/images/images/tripTotalMileage/tripTotalMileageOut.png"
            }
        }


        // module gear
        Item {
            id: gear

            Image {
                id: gearOutline
                x: 839
                y: 587
                opacity: 1.0
                source: "qrc:/images/images/gear/gearOutline.png"
            }
            Image {
                id: gearD
                x: 885
                y: 535
                opacity: valueGearMode == 0x01 ? 1.0 : 0.0
                source: "qrc:/images/images/gear/gearD.png"
            }
            Image {
                id: gearN
                x: 884
                y: 536
                opacity: (valueGearMode == 0 && valueGear == 0x0e) ? 1.0 : 0.0
                source: "qrc:/images/images/gear/gearN.png"
            }
            Image {
                id: gearR
                x: 887
                y: 535
                opacity: (valueGearMode == 0 && valueGear == 0x0f) ? 1.0 : 0.0
                source: "qrc:/images/images/gear/gearR.png"
            }
            Image {
                id: gearP
                x: 888
                y: 535
                opacity: (valueGearMode == 0 && valueGear == 0) ? 1.0 : 0.0
                source: "qrc:/images/images/gear/gearP.png"
            }
        }

        // module battery
        //        Item {
        //            id: battery
        //            opacity: valueChargeState != 0 ? 1.0 : 0.0
        //            Image {
        //                id: warnBackground
        //                x: 699
        //                y: 216
        //                opacity: chargeErrValue == 1 ? 1.0 : 0.0
        //                source: "qrc:/images/images/warnBackground.png"
        //            }
        //            Image {
        //                id: batteryBase
        //                x: 807
        //                y: 348
        //                opacity: 1.0
        //                source: "qrc:/images/images/battery/batteryBase.png"
        //            }
        //            Image {
        //                id: chargeFaultText
        //                x: 890
        //                y: 241
        //                opacity: chargeErrValue == 1 ? 1.0 : 0.0
        //                source: "qrc:/images/images/battery/chargeFault.png"
        //            }

        //            Image {
        //                id: charging
        //                x: 820
        //                y: 350
        //                width: 136 / 50 * valueBatteryPower   // 136 is the width of charging.png
        //                opacity: (chargeErrValue == 0 && valueBatteryPower != 100) ? 1.0 : 0.0
        //                source: "qrc:/images/images/charge/charging.png"
        //            }
        //            Image {
        //                id: chargeFault
        //                x: 819
        //                y: 350
        //                opacity: chargeErrValue == 1 ? 1.0 : 0.0
        //                source: "qrc:/images/images/charge/chargeFault.png"
        //            }
        //            Image {
        //                id: chargeComplete
        //                x: 819
        //                y: 350
        //                opacity: (chargeErrValue == 0 && valueBatteryPower == 100) ? 1.0 : 0.0
        //                source: "qrc:/images/images/charge/chargeComplete.png"
        //            }
        //            Image {
        //                id: iconCharge
        //                x: 831
        //                y: 243
        //                opacity: chargeErrValue == 1 ? 1.0 : 0.0
        //                source: "qrc:/images/images/charge/iconCharge.png"
        //            }
        //            Image {
        //                id: chargeOutLine
        //                x: 807
        //                y: 348
        //                opacity: 1.0
        //                source: "qrc:/images/images/charge/chargeOutLine.png"
        //            }
        //            Text {
        //                id: numBatteryPower
        //                x: 916
        //                y: 382
        //                opacity: chargeErrValue == 0 ? 1.0 : 0.0
        //                color: "white"
        //                font.pixelSize: 40
        //                font.bold: true
        //                text: textBatteryPower
        //            }
        //        }

        // KW num
        Item {
            id: kwModule

            Item {
                id: numKw
                opacity: valueKw < 0 ? 0.0 : 1.0
                x: 241
                //        y: 318
                y: 319
                width: 239
                height: 142

                DigitValue {
                    id: numKwShow
                    anchors.centerIn: numKw
                    spacing: -205
                    icon0: "qrc:/images/images/num/0.png"
                    icon1: "qrc:/images/images/num/1.png"
                    icon2:  "qrc:/images/images/num/2.png"
                    icon3: "qrc:/images/images/num/3.png"
                    icon4: "qrc:/images/images/num/4.png"
                    icon5: "qrc:/images/images/num/5.png"
                    icon6: "qrc:/images/images/num/6.png"
                    icon7: "qrc:/images/images/num/7.png"
                    icon8: "qrc:/images/images/num/8.png"
                    icon9: "qrc:/images/images/num/9.png"
                    value: valueKw < 0 ? (-valueKw) : valueKw
                }
            }

            Item {
                id: numKwNagative
                opacity: valueKw < 0 ? 1.0 : 0.0
                x: 241
                //        y: 318
                y: 290
                width: 239
                height: 142

                DigitValue {
                    id: numKwNShow
                    anchors.centerIn: numKwNagative
                    spacing: -112
                    icon0: "qrc:/images/images/num/0_green.png"
                    icon1: "qrc:/images/images/num/1_green.png"
                    icon2: "qrc:/images/images/num/2_green.png"
                    icon3: "qrc:/images/images/num/3_green.png"
                    icon4: "qrc:/images/images/num/4_green.png"
                    icon5: "qrc:/images/images/num/5_green.png"
                    icon6: "qrc:/images/images/num/6_green.png"
                    icon7: "qrc:/images/images/num/7_green.png"
                    icon8: "qrc:/images/images/num/8_green.png"
                    icon9: "qrc:/images/images/num/9_green.png"
                    value: valueKw < 0 ? (-valueKw) : valueKw
                }
            }

            Image {
                id: kwPointer
                x: 59
                y: 397
                opacity: 1
                source: "qrc:/images/images/kmPointer.png"

                transform: Rotation {
                    id: pointerRotationKw
                    origin.x: 357.5 - kwPointer.x
                    origin.y: 390 - kwPointer.y
                    angle: (valueKw <= 100) ? (valueKw + 20) * 252 / 140 : 216 + (valueKw + 20 - 120) * 36 / 100
                    Behavior on angle { SpringAnimation{ spring: 2; damping: 0.2} }
                }
            }

        }
        // speed
        Item {
            id: speedModule

            Item {
                id: numSpeed
                opacity: 1.0
                x: 1446
                //        y: 318
                y: 319
                width: 239
                height: 142

                DigitValue {
                    id: numSpeedShow
                    anchors.centerIn: numSpeed
                    spacing: -205
                    icon0: "qrc:/images/images/num/0.png"
                    icon1: "qrc:/images/images/num/1.png"
                    icon2: "qrc:/images/images/num/2.png"
                    icon3: "qrc:/images/images/num/3.png"
                    icon4: "qrc:/images/images/num/4.png"
                    icon5: "qrc:/images/images/num/5.png"
                    icon6: "qrc:/images/images/num/6.png"
                    icon7: "qrc:/images/images/num/7.png"
                    icon8: "qrc:/images/images/num/8.png"
                    icon9: "qrc:/images/images/num/9.png"
                    value: valueSpeed
                }
            }

            Image {
                id: speedPointer
                x: 1242
                y: 388
                opacity: 1
                source: "qrc:/images/images/speedPointer.png"

                transform: Rotation {
                    id: pointerRotationSpeed
                    origin.x: 1555- speedPointer.x;
                    origin.y: 390 - speedPointer.y;
                    angle: valueSpeed * 240 / 240//240//valueSpeed * 240 / 240
                    Behavior on angle { SpringAnimation{ spring: 1.2; damping: 0.2; }
                    }
                }
            }

        }
        // bottom four    property int valueBatteryPower: CarStatus.soc
        //    property int valueFule: CarStatus.fuel
        //    property int vEngineCoolantCurrentTemp: CarStatus.engineCoolantCurrentTemp
        //    property int valueWaterTemp: CarStatus.waterTemp
        Item {
            id: bottomFour

            Item {
                id: numFule

                Image {
                    id: i8___1
                    x: 312
                    y: 669
                    opacity: valueFule >= 8 * 100 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon333/8___1.png"
                }
                Image {
                    id: i7___1
                    x: 284
                    y: 664
                    opacity: valueFule >= 7 * 100 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon333/7___1.png"
                }
                Image {
                    id: i6___1
                    x: 260
                    y: 657
                    opacity: valueFule >= 6 * 100 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon333/6___1.png"
                }
                Image {
                    id: i5___1
                    x: 235
                    y: 648
                    opacity: valueFule >= 5 * 100 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon333/5___1.png"
                }
                Image {
                    id: i4___1
                    x: 208
                    y: 637
                    opacity: valueFule >= 4 * 100 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon333/4___1.png"
                }
                Image {
                    id: i3___1
                    x: 185
                    y: 625
                    opacity: valueFule >= 3 * 100 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon333/3___1.png"
                }
                Image {
                    id: i2___1
                    x: 162
                    y: 610
                    opacity: valueFule >= 2 * 100 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon333/2___1.png"
                }
                Image {
                    id: i1___1
                    x: 145
                    y: 596
                    opacity: valueFule >= 1 * 100 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon333/1___1.png"
                }

            }

            // module
            Item {
                id: waterTemp

                Image {
                    id: i8___3
                    x: 1509
                    y: 668
                    opacity: vEngineCoolantCurrentTemp >= 8 * 189 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon222/8___3.png"
                }
                Image {
                    id: i7___3
                    x: 1480
                    y: 664
                    opacity: vEngineCoolantCurrentTemp >= 7 * 189 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon222/7___3.png"
                }
                Image {
                    id: i6___4
                    x: 1456
                    y: 658
                    opacity: vEngineCoolantCurrentTemp >= 6 * 189 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon222/6___4.png"
                }
                Image {
                    id: i5___4
                    x: 1431
                    y: 650
                    opacity: vEngineCoolantCurrentTemp >= 5 * 189 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon222/5___4.png"
                }
                Image {
                    id: i4___4
                    x: 1404
                    y: 640
                    opacity: vEngineCoolantCurrentTemp >= 4 * 189 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon222/4___4.png"
                }
                Image {
                    id: i3___4
                    x: 1381
                    y: 628
                    opacity: vEngineCoolantCurrentTemp >= 3 * 189 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon222/3___4.png"
                }
                Image {
                    id: i2___4
                    x: 1358
                    y: 614
                    opacity: vEngineCoolantCurrentTemp >= 2 * 189 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon222/2___4.png"
                }
                Image {
                    id: i1___4
                    x: 1341
                    y: 600
                    opacity: vEngineCoolantCurrentTemp >= 1 * 189 / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon222/1___4.png"
                }

            }

            // module icon444
            Item {
                id: batteryPower

                Image {
                    id: i8____2
                    x: 375
                    y: 669
                    opacity: valueBatteryPower >= 5 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon444/8____2.png"
                }
                Image {
                    id: i7____2
                    x: 399
                    y: 664
                    opacity: valueBatteryPower >= 17 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon444/7____2.png"
                }
                Image {
                    id: i6____2
                    x: 425
                    y: 657
                    opacity: valueBatteryPower >= 29 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon444/6____2.png"
                }
                Image {
                    id: i5____2
                    x: 450
                    y: 649
                    opacity: valueBatteryPower >= 41 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon444/5____2.png"
                }
                Image {
                    id: i4____2
                    x: 474
                    y: 638
                    opacity: valueBatteryPower >= 53 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon444/4____2.png"
                }
                Image {
                    id: i3____2
                    x: 499
                    y: 626
                    opacity: valueBatteryPower >= 65 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon444/3____2.png"
                }
                Image {
                    id: i2____2
                    x: 520
                    y: 612
                    opacity: valueBatteryPower >= 77 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon444/2____2.png"
                }
                Image {
                    id: i1____2
                    x: 542
                    y: 598
                    opacity: valueBatteryPower >= 89 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon444/1____2.png"
                }
            }

            // module icon111
            Item {
                id: engineCoolantCurrentTemp

                //            Image {
                //                id: i8____5
                //                x: 1573
                //                y: 669
                //                opacity: vEngineCoolantCurrentTemp >= 1 * 189 / 8 ? 1.0 : 0.0
                //                source: "qrc:/images/images/bottomFour/icon111/8____5.png"
                //            }
                Image {
                    id: i8____5
                    x: 1573
                    y: 669
                    opacity: valueWaterTemp >= 50 + 1 * (130 - 50) / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon111/8____5.png"
                }
                Image {
                    id: i7____5
                    x: 1597
                    y: 664
                    opacity: valueWaterTemp >= 50 + 2 * (130 - 50) / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon111/7____5.png"
                }
                Image {
                    id: i6____5
                    x: 1622
                    y: 658
                    opacity: valueWaterTemp >= 50 + 3 * (130 - 50) / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon111/6____5.png"
                }
                Image {
                    id: i5____5
                    x: 1647
                    y: 649
                    opacity: valueWaterTemp >= 50 + 4 * (130 - 50) / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon111/5____5.png"
                }
                Image {
                    id: i4____5
                    x: 1671
                    y: 638
                    opacity: valueWaterTemp >= 50 + 5 * (130 - 50) / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon111/4____5.png"
                }
                Image {
                    id: i3____5
                    x: 1696
                    y: 626
                    opacity: valueWaterTemp >= 50 + 6 * (130 - 50) / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon111/3____5.png"
                }
                Image {
                    id: i2____4
                    x: 1717
                    y: 611
                    opacity: valueWaterTemp >= 50 + 7 * (130 - 50) / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon111/2____4.png"
                }
                Image {
                    id: i1____4
                    x: 1739
                    y: 598
                    opacity: valueWaterTemp >= 50 + 8 * (130 - 50) / 8 ? 1.0 : 0.0
                    source: "qrc:/images/images/bottomFour/icon111/1____4.png"
                }
            }
        }
    }

    Item {
        id: chargeMode
        visible: valueDisplayMode == true

        Image {
            id: backgroundBattery
            x: 0
            y: 0
            opacity: 1.0
            source: "qrc:/images/images/backgroundBattery.png"
        }

        Image {
            id: warnBackground
            x: 699
            y: 216
            visible: valueChargeState == 0 ? false : true      //chargeErrValue == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/warnBackground.png"
        }
        Image {
            id: batteryBase
            x: 807
            y: 348
            opacity: 1.0
            source: "qrc:/images/images/battery/batteryBase.png"
        }


        Image {
            id: charging
            x: 820
            y: 350
            width: valueChargeState != 0 ? 136 / 50 * valueBatteryPower  : 0 // 136 is the width of charging.png
            //                opacity: (valueChargeState == 1 || valueChargeState == 2) ? 1.0 : 0.0
            opacity: valueChargeState == 2 ? 1.0 : 0.0
            source: "qrc:/images/images/charge/charging.png"
            SequentialAnimation on opacity {
                loops: Animation.Infinite
                PropertyAnimation { to: 0; duration: 1000 }
                PropertyAnimation { to: 1; duration: 1000 }
                PauseAnimation { duration: 500 }
            }
        }

        Image {
            id: chargingReady
            x: 820
            y: 350
            width: 136 / 50 * valueBatteryPower   // 136 is the width of charging.png
            opacity: valueChargeState == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/charge/charging.png"
            //                SequentialAnimation on opacity {
            //                       loops: Animation.Infinite
            //                       PropertyAnimation { to: 0; duration: 1000 }
            //                       PropertyAnimation { to: 1; duration: 1000 }
            //                       PauseAnimation { duration: 500 }
            //                   }
        }



        Image {
            id: chargeComplete
            x: 820
            y: 350
            opacity: valueChargeState == 3 ? 1.0 : 0.0
            source: "qrc:/images/images/charge/chargeComplete.png"
        }
        Image {
            id: iconCharge
            x: 831
            y: 243
            opacity: (valueChargeState != 0 &&  valueChargeState != 4) ? 1.0 : 0.0
            source: "qrc:/images/images/charge/iconCharge.png"
        }
        Image {
            id: chargeFault
            x: 820
            y: 350
            opacity: (valueChargeState == 4) ? 1.0 : 0.0
            source: "qrc:/images/images/charge/chargeFault.png"
        }
        Image {
            id: chargeOutLine
            x: 807
            y: 348
            opacity: 1.0
            source: "qrc:/images/images/charge/chargeOutLine.png"
        }
        Text {
            id: numBatteryPower
            x: 916
            y: 382
            opacity: (valueChargeState != 4 && valueChargeState != 0 && valueChargeState != 3) ? 1.0 : 0.0
            color: "white"
            font.pixelSize: 40
            font.bold: true
            text: textBatteryPower
        }
        Image {
            id: chargeFaultText
            x: 890
            y: 241
            opacity: (valueChargeState == 4)  ? 1.0 : 0.0
            source: "qrc:/images/images/battery/chargeFault.png"
        }
        Image {
            id: chargeReadyText
            x: 890
            y: 241
            opacity: valueChargeState == 1 ? 1.0 : 0.0
            source: "qrc:/images/images/battery/chargReady.png"
        }
        Image {
            id: chargingText
            x: 890
            y: 241
            opacity: valueChargeState == 2 ? 1.0 : 0.0
            source: "qrc:/images/images/battery/charging.png"
        }
        Image {
            id: chargeCompleteText
            x: 890
            y: 241
            opacity: valueChargeState == 3 ? 1.0 : 0.0
            source: "qrc:/images/images/battery/chargeComplete.png"
        }

    }

    //    CarTipsIcon {
    //        id: carTipsIcon
    //    }
}
