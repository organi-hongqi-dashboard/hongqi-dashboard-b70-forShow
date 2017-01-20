import QtQuick 2.4
import QtQuick.Controls 1.2

Row {
    Column {
//        GroupBox {
//            title: "Special SettingsInfo"

//            Column {
//                spacing: 2

//                CheckBox {
//                    text: "commandRequest"
//                    onClicked: CarStatus.commandRequest = checked
//                    Component.onCompleted: CarStatus.commandRequest = checked
//                }
//                CheckBox {
//                    text: "closeScreenRequest"
//                    onClicked: CarStatus.closeScreenRequest = checked
//                    Component.onCompleted: CarStatus.closeScreenRequest = checked
//                }
//                CheckBox {
//                    text: "tripClear"
//                    onClicked: CarStatus.tripClear = checked
//                    Component.onCompleted: CarStatus.tripClear = checked
//                }
//                CheckBox {
//                    text: "avgSpeedClear"
//                    onClicked: CarStatus.avgSpeedClear = checked
//                    Component.onCompleted: CarStatus.avgSpeedClear = checked
//                }
//                CheckBox {
//                    text: "avgFuelClear"
//                    onClicked: CarStatus.avgFuelClear = checked
//                    Component.onCompleted: CarStatus.avgFuelClear = checked
//                }
//                CheckBox {
//                    text: "engineeringModel"
//                    onClicked: CarStatus.engineeringModel = checked
//                    Component.onCompleted: CarStatus.engineeringModel = checked
//                }
//                Row {
//                    Text {
//                        text: "picVoiceSync: "
//                    }
//                    TextField {
//                        id: picVoiceSync
//                        Component.onCompleted: text = 0
//                        onTextChanged: CarStatus.picVoiceSync = text * 1
//                    }
//                }
//                Row {
//                    Text {
//                        text: "dateTimeSetting: "
//                    }
//                    TextField {
//                        id: dateTimeSetting
//                        Component.onCompleted: text = 0
//                        onTextChanged: CarStatus.dateTimeSetting = text * 1
//                    }
//                }
//            }
//        }
        GroupBox {
            title: "Button"
            Column {
                spacing: 2

                CheckBox {
                    id :autoSendSpecSettings
                    text: "autoSendSpecSettings"
                }
                Button {
                    text: "send special"
                    width: 100
                    onClicked: CarStatus.sendSpecSettingsFrame()
                }
            }
        }
        Timer {
            id: timerSpecSettings
            interval: 100;
            running: autoSendSpecSettings.checked;
            repeat: true
            onTriggered: {
                CarStatus.sendSpecSettingsFrame()
            }
        }
    }

    GroupBox {
        title: "SpecialInfo"

        Row {
            Column {
                spacing: 2

                MText {
                    mtext1: "leftLamp: "
                    mtext2: CarStatus.leftLamp
                }
                MText {
                    mtext1: "rightLamp: "
                    mtext2: CarStatus.rightLamp
                }
                MText {
                    mtext1: "fogFrontLamp: "
                    mtext2: CarStatus.fogFrontLamp
                }
                MText {
                    mtext1: "fogRearLamp: "
                    mtext2: CarStatus.fogRearLamp
                }
                MText {
                    mtext1: "highBeamLight: "
                    mtext2: CarStatus.highBeamLight
                }
                MText {
                    mtext1: "dippedHeadlight: "
                    mtext2: CarStatus.dippedHeadlight
                }
                MText {
                    mtext1: "airBag: "
                    mtext2: CarStatus.airBag
                }
                MText {
                    mtext1: "masterStrapLight: "
                    mtext2: CarStatus.masterStrapLight
                }

                MText {
                    mtext1: "viceStrapLight: "
                    mtext2: CarStatus.viceStrapLight
                }
                MText {
                    mtext1: "parkingBrakeErr: "
                    mtext2: CarStatus.parkingBrakeErr
                }
                MText {
                    mtext1: "parkingBrake: "
                    mtext2: CarStatus.parkingBrake
                }
                MText {
                    mtext1: "accumulatorLight: "
                    mtext2: CarStatus.accumulatorLight
                }
                MText {
                    mtext1: "absLight: "
                    mtext2: CarStatus.absLight
                }
                MText {
                    mtext1: "positionLight: "
                    mtext2: CarStatus.positionLight
                }
                MText {
                    mtext1: "oilPressureLight: "
                    mtext2: CarStatus.oilPressureLight
                }
                MText {
                    mtext1: "engineErrLight: "
                    mtext2: CarStatus.engineErrLight
                }

                MText {
                    mtext1: "epsFault: "
                    mtext2: CarStatus.epsFault
                }
                MText {
                    mtext1: "gearBoxFault: "
                    mtext2: CarStatus.gearBoxFault
                }
                MText {
                    mtext1: "tirePressure: "
                    mtext2: CarStatus.tirePressure
                }
                MText {
                    mtext1: "epc: "
                    mtext2: CarStatus.epc
                }
                MText {
                    mtext1: "engineSVSErr: "
                    mtext2: CarStatus.engineSVSErr
                }
                MText {
                    mtext1: "sysFault: "
                    mtext2: CarStatus.sysFault
                }
                MText {
                    mtext1: "vehicleFailure: "
                    mtext2: CarStatus.vehicleFailure
                }
                MText {
                    mtext1: "batteryFault: "
                    mtext2: CarStatus.batteryFault
                }

                MText {
                    mtext1: "generatorFault: "
                    mtext2: CarStatus.generatorFault
                }
                MText {
                    mtext1: "chargingLine: "
                    mtext2: CarStatus.chargingLine
                }
                MText {
                    mtext1: "eleMotorCoolantHighTemp: "
                    mtext2: CarStatus.eleMotorCoolantHighTemp
                }
                MText {
                    mtext1: "engineCoolantHighTemp: "
                    mtext2: CarStatus.engineCoolantHighTemp
                }
                MText {
                    mtext1: "dynamicElectricityCut: "
                    mtext2: CarStatus.dynamicElectricityCut
                }
                MText {
                    mtext1: "ready: "
                    mtext2: CarStatus.ready
                }

                Text {
                    text: "chargeState: " + CarStatus.chargeState
                }
                Text {
                    text: "coolantCurrentTemp: " + CarStatus.coolantCurrentTemp
                }
                Text {
                    text: "generatorPower: " + CarStatus.generatorPower
                }
            }
        }
    }
}
