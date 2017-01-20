import QtQuick 2.4
import QtQuick.Controls 1.2

Row {
    GroupBox {
        title: "Special SettingsInfo"

        Column {
            spacing: 2

            MText {
                mtext1: "commandRequest: "
                mtext2: SerialTran.commandRequest
            }
            MText {
                mtext1: "closeScreenRequest: "
                mtext2: SerialTran.closeScreenRequest
            }
            MText {
                mtext1: "tripClear: "
                mtext2: SerialTran.tripClear
            }
            MText {
                mtext1: "avgSpeedClear: "
                mtext2: SerialTran.avgSpeedClear
            }
            MText {
                mtext1: "avgFuelClear: "
                mtext2: SerialTran.avgFuelClear
            }
            MText {
                mtext1: "engineeringModel: "
                mtext2: SerialTran.engineeringModel
            }
            MText {
                mtext1: "picVoiceSync: "
                mtext2: SerialTran.picVoiceSync
            }
            MText {
                mtext1: "dateTimeSetting: "
                mtext2: SerialTran.dateTimeSetting
            }
        }
    }

    GroupBox {
        title: "SpecialInfo"

        Column {
            spacing: 2

            CheckBox {
                text: "leftLamp"
                onClicked: SerialTran.leftLamp = checked
            }
            CheckBox {
                text: "rightLamp"
                onClicked: SerialTran.rightLamp = checked
            }
            CheckBox {
                text: "fogFrontLamp"
                onClicked: SerialTran.fogFrontLamp = checked
            }
            CheckBox {
                text: "fogRearLamp"
                onClicked: SerialTran.fogRearLamp = checked
            }
            CheckBox {
                text: "highBeamLight"
                onClicked: SerialTran.highBeamLight = checked
            }
            CheckBox {
                text: "dippedHeadlight"
                onClicked: SerialTran.dippedHeadlight = checked
            }
            CheckBox {
                text: "airBag"
                onClicked: SerialTran.airBag = checked
            }
            CheckBox {
                text: "masterStrapLight"
                onClicked: SerialTran.masterStrapLight = checked
            }

            CheckBox {
                text: "viceStrapLight"
                onClicked: SerialTran.viceStrapLight = checked
            }
            CheckBox {
                text: "parkingBrakeErr"
                onClicked: SerialTran.parkingBrakeErr = checked
            }
            CheckBox {
                text: "parkingBrake"
                onClicked: SerialTran.parkingBrake = checked
            }
            CheckBox {
                text: "accumulatorLight"
                onClicked: SerialTran.accumulatorLight = checked
            }
            CheckBox {
                text: "absLight"
                onClicked: SerialTran.absLight = checked
            }
            CheckBox {
                text: "positionLight"
                onClicked: SerialTran.positionLight = checked
            }
            CheckBox {
                text: "oilPressureLight"
                onClicked: SerialTran.oilPressureLight = checked
            }
            CheckBox {
                text: "engineErrLight"
                onClicked: SerialTran.engineErrLight = checked
            }

            CheckBox {
                text: "epsFault"
                onClicked: SerialTran.epsFault = checked
            }
            CheckBox {
                text: "gearBoxFault"
                onClicked: SerialTran.gearBoxFault = checked
            }
            CheckBox {
                text: "tirePressure"
                onClicked: SerialTran.tirePressure = checked
            }
            CheckBox {
                text: "epc"
                onClicked: SerialTran.epc = checked
            }
            CheckBox {
                text: "engineSVSErr"
                onClicked: SerialTran.engineSVSErr = checked
            }
            CheckBox {
                text: "sysFault"
                onClicked: SerialTran.sysFault = checked
            }
            CheckBox {
                text: "vehicleFailure"
                onClicked: SerialTran.vehicleFailure = checked
            }
            CheckBox {
                text: "batteryFault"
                onClicked: SerialTran.batteryFault = checked
            }


            CheckBox {
                text: "generatorFault"
                onClicked: SerialTran.generatorFault = checked
            }
            CheckBox {
                text: "chargingLine"
                onClicked: SerialTran.chargingLine = checked
            }
            CheckBox {
                text: "eleMotorCoolantHighTemp"
                onClicked: SerialTran.eleMotorCoolantHighTemp = checked
            }
            CheckBox {
                text: "engineCoolantHighTemp"
                onClicked: SerialTran.engineCoolantHighTemp = checked
            }
            CheckBox {
                text: "dynamicElectricityCut"
                onClicked: SerialTran.dynamicElectricityCut = checked
            }
            CheckBox {
                text: "ready"
                onClicked: SerialTran.ready = checked
            }
            CheckBox {
                text: "displayMode"
                onClicked: SerialTran.displayMode = checked
            }

            Row {
                Text {
                    text: "chargeState: "
                }
                TextField {
                    id: chargeState
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.chargeState = text * 1
                }
            }
            Row {
                Text {
                    text: "coolantCurrentTemp: "
                }
                TextField {
                    id: coolantCurrentTemp
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.coolantCurrentTemp = text * 1
                }
            }
            Row {
                Text {
                    text: "generatorPower: "
                }
                TextField {
                    id: generatorPower
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.generatorPower = text * 1
                }
            }/*
            Row {
                Text {
                    text: "keyOutInfo: "
                }
                TextField {
                    id: keyOutInfo
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.keyOutInfo = text * 1
                }
            }
            Row {
                Text {
                    text: "keyFault: "
                }
                TextField {
                    id: keyFault
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.keyFault = text * 1
                }
            }
            Row {
                Text {
                    text: "chargeComplete: "
                }
                TextField {
                    id: chargeComplete
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.chargeComplete = text * 1
                }
            }
            Row {
                Text {
                    text: "ready: "
                }
                TextField {
                    id: ready
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.ready = text * 1
                }
            }*/
        }

//        Column {
//            spacing: 2

//            Row {
//                Text {
//                    text: "frontLeftRadar: "
//                }
//                TextField {
//                    id: frontLeftRadar
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.frontLeftRadar = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "frontLeftCenterRadar: "
//                }
//                TextField {
//                    id: frontLeftCenterRadar
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.frontLeftCenterRadar = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "frontRightRadar: "
//                }
//                TextField {
//                    id: frontRightRadar
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.frontRightRadar = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "frontRightCenterRadar: "
//                }
//                TextField {
//                    id: frontRightCenterRadar
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.frontRightCenterRadar = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "rearLeftRadar: "
//                }
//                TextField {
//                    id: rearLeftRadar
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.rearLeftRadar = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "rearLeftCenterRadar: "
//                }
//                TextField {
//                    id: rearLeftCenterRadar
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.rearLeftCenterRadar = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "rearRightRadar: "
//                }
//                TextField {
//                    id: rearRightRadar
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.rearRightRadar = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "rearRightCenterRadar: "
//                }
//                TextField {
//                    id: rearRightCenterRadar
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.rearRightCenterRadar = text * 1
//                }
//            }
//            CheckBox {
//                text: "radarInvalid"
//                onClicked: SerialTran.radarInvalid = checked
//            }
//            CheckBox {
//                text: "frontRadarDiagnose"
//                onClicked: SerialTran.frontRadarDiagnose = checked
//            }
//            CheckBox {
//                text: "rearRadarDiagnose"
//                onClicked: SerialTran.rearRadarDiagnose = checked
//            }
//            CheckBox {
//                text: "frontRadarAlert"
//                onClicked: SerialTran.frontRadarAlert = checked
//            }
//            CheckBox {
//                text: "rearRadarAlert"
//                onClicked: SerialTran.rearRadarAlert = checked
//            }
//            CheckBox {
//                text: "airbagErr"
//                onClicked: SerialTran.airbagErr = checked
//            }
//            CheckBox {
//                text: "seatBeltLight"
//                onClicked: SerialTran.seatBeltLight = checked
//            }
//            CheckBox {
//                text: "absErr"
//                onClicked: SerialTran.absErr = checked
//            }
//            CheckBox {
//                text: "oilPressWarning"
//                onClicked: SerialTran.oilPressWarning = checked
//            }
//            CheckBox {
//                text: "engineRepairLight"
//                onClicked: SerialTran.engineRepairLight = checked
//            }
//            CheckBox {
//                text: "ccsMainLight"
//                onClicked: SerialTran.ccsMainLight = checked
//            }
//            CheckBox {
//                text: "headlampSysErr"
//                onClicked: SerialTran.headlampSysErr = checked
//            }
//            CheckBox {
//                text: "tirePressWarning"
//                onClicked: SerialTran.tirePressWarning = checked
//            }
//            CheckBox {
//                text: "tirePressMonitorErr"
//                onClicked: SerialTran.tirePressMonitorErr = checked
//            }
//            CheckBox {
//                text: "autoTransErr"
//                onClicked: SerialTran.autoTransErr = checked
//            }
//            CheckBox {
//                text: "engineTheftLight"
//                onClicked: SerialTran.engineTheftLight = checked
//            }
//            CheckBox {
//                text: "theftWarning"
//                onClicked: SerialTran.theftWarning = checked
//            }
//            CheckBox {
//                text: "chargeLight"
//                onClicked: SerialTran.chargeLight = checked
//            }
//            CheckBox {
//                text: "engineErr"
//                onClicked: SerialTran.engineErr = checked
//            }
//            CheckBox {
//                text: "ccsControl"
//                onClicked: SerialTran.ccsControl = checked
//            }
//            CheckBox {
//                text: "brakeErr"
//                onClicked: SerialTran.brakeErr = checked
//            }
//            CheckBox {
//                text: "trip2CleanFlag"
//                onClicked: SerialTran.trip2CleanFlag = checked
//            }
//            CheckBox {
//                text: "trip1CleanFlag"
//                onClicked: SerialTran.trip1CleanFlag = checked
//            }
//            CheckBox {
//                text: "dashboardConfigInfo"
//                onClicked: SerialTran.dashboardConfigInfo = checked
//            }
//            Row {
//                Text {
//                    text: "drivingHour: "
//                }
//                TextField {
//                    id: drivingHour
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.drivingHour = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "drivingMinute: "
//                }
//                TextField {
//                    id: drivingMinute
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.drivingMinute = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "lfTireTPMS: "
//                }
//                TextField {
//                    id: lfTireTPMS
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.lfTireTPMS = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "rfTireTPMS: "
//                }
//                TextField {
//                    id: rfTireTPMS
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.rfTireTPMS = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "lrTireTPMS: "
//                }
//                TextField {
//                    id: lrTireTPMS
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.lrTireTPMS = text * 1
//                }
//            }
//            Row {
//                Text {
//                    text: "rrTireTPMS: "
//                }
//                TextField {
//                    id: rrTireTPMS
//                    Component.onCompleted: text = 0
//                    onTextChanged: SerialTran.rrTireTPMS = text * 1
//                }
//            }
//        }
    }
}
