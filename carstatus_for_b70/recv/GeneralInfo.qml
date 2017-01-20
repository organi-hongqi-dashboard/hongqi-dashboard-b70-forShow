import QtQuick 2.4
import QtQuick.Controls 1.2

Row {

    GroupBox {
        title: "GeneralInfo"

        Row {
            Column {
                spacing: 2

                MText {
                    mtext1: "tmpVersion: "
                    mtext2: CarStatus.tmpVersion
                }
                MText {
                    mtext1: "relVersion: "
                    mtext2: CarStatus.relVersion
                }
                MText {
                    mtext1: "hwVersion: "
                    mtext2: CarStatus.hwVersion
                }
                MText {
                    mtext1: "rpm: "
                    mtext2: CarStatus.rpm
                }
                MText {
                    mtext1: "dateTime: "
                    mtext2: CarStatus.dateTime
                    mtext3: CarStatus.date + " " + CarStatus.time
                }
                MText {
                    mtext1: "speed: "
                    mtext2: CarStatus.speed
                }
                MText {
                    mtext1: "waterTemp: "
                    mtext2: CarStatus.waterTemp
                }
                MText {
                    mtext1: "key1: "
                    mtext2: CarStatus.key1
                }
                MText {
                    mtext1: "key2: "
                    mtext2: CarStatus.key2
                }
                MText {
                    mtext1: "key3: "
                    mtext2: CarStatus.key3
                }
                MText {
                    mtext1: "key4: "
                    mtext2: CarStatus.key4
                }
                MText {
                    mtext1: "igOn: "
                    mtext2: CarStatus.igOn
                }
                MText {
                    mtext1: "gear: "
                    mtext2: CarStatus.gear
                }
                MText {
                    mtext1: "gearMode: "
                    mtext2: CarStatus.gearMode
                }
                MText {
                    mtext1: "keyStatus: "
                    mtext2: CarStatus.keyStatus
                }
                MText {
                    mtext1: "lfDoor: "
                    mtext2: CarStatus.lfDoor
                }
                MText {
                    mtext1: "rfDoor: "
                    mtext2: CarStatus.rfDoor
                }
                MText {
                    mtext1: "lrDoor: "
                    mtext2: CarStatus.lrDoor
                }
                MText {
                    mtext1: "rrDoor: "
                    mtext2: CarStatus.rrDoor
                }
                MText {
                    mtext1: "hoodDoor: "
                    mtext2: CarStatus.hoodDoor
                }
                MText {
                    mtext1: "trunkDoor: "
                    mtext2: CarStatus.trunkDoor
                }
                MText {
                    mtext1: "doorWarningLight: "
                    mtext2: CarStatus.doorWarningLight
                }
            }
            Column {
                spacing: 2
                MText {
                    mtext1: "odo: "
                    mtext2: CarStatus.odo
                }
                MText {
                    mtext1: "avgSpeed: "
                    mtext2: CarStatus.avgSpeed
                }
//                MText {
//                    mtext1: "avgFuelUnit: "
//                    mtext2: CarStatus.avgFuelUnit
//                }
//                MText {
//                    mtext1: "instantaneousFuelUnit: "
//                    mtext2: CarStatus.instantaneousFuelUnit
//                }
                MText {
                    mtext1: "remainMileage: "
                    mtext2: CarStatus.remainMileage
                }
                MText {
                    mtext1: "trip1: "
                    mtext2: CarStatus.trip1
                }
                MText {
                    mtext1: "fuel: "
                    mtext2: CarStatus.fuel
                }
                MText {
                    mtext1: "trip2: "
                    mtext2: CarStatus.trip2
                }
                MText {
                    mtext1: "soc: "
                    mtext2: CarStatus.soc
                }
                MText {
                    mtext1: "maintenanceMileage: "
                    mtext2: CarStatus.maintenanceMileage
                }
                MText {
                    mtext1: "outTemp: "
                    mtext2: (CarStatus.outTemp).toFixed(1)
                }
                MText {
                    mtext1: "avgFuel: "
                    mtext2: CarStatus.avgFuel
                }
                MText {
                    mtext1: "instantaneousFuel: "
                    mtext2: (CarStatus.instantaneousFuel).toFixed(1)
                }
                MText {
                    mtext1: "batteryCurrent: "
                    mtext2: (CarStatus.batteryCurrent).toFixed(1)
                }
                MText {
                    mtext1: "batteryVoltage: "
                    mtext2: (CarStatus.batteryVoltage).toFixed(1)
                }
            }
        }
    }
    Column {
        GroupBox {
            title: "General SettingsInfo"

            Column {
                spacing: 2

                CheckBox {
                    text: "commandReq"
                    onClicked: CarStatus.commandReq = checked
                    Component.onCompleted: CarStatus.commandReq = checked
                }
                CheckBox {
                    text: "closeReq"
                    onClicked: CarStatus.closeReq = checked
                    Component.onCompleted: CarStatus.closeReq = checked
                }
                CheckBox {
                    text: "tripClean"
                    onClicked: CarStatus.tripClean = checked
                    Component.onCompleted: CarStatus.tripClean = checked
                }
                CheckBox {
                    text: "avgSpeedClean"
                    onClicked: CarStatus.avgSpeedClean = checked
                    Component.onCompleted: CarStatus.avgSpeedClean = checked
                }
                CheckBox {
                    text: "avgFuelClean"
                    onClicked: CarStatus.avgFuelClean = checked
                    Component.onCompleted: CarStatus.avgFuelClean = checked
                }
                CheckBox {
                    text: "projectMode"
                    onClicked: CarStatus.projectMode = checked
                    Component.onCompleted: CarStatus.projectMode = checked
                }
                Row {
                    Text {
                        text: "alarmInterface: "
                    }
                    TextField {
                        id: alarmInterface
                        Component.onCompleted: text = 0
                        onTextChanged: CarStatus.alarmInterface = text * 1
                    }
                }
                Row {
                    Text {
                        text: "interfaceSoundSync: "
                    }
                    TextField {
                        id: interfaceSoundSync
                        Component.onCompleted: text = 0
                        onTextChanged: CarStatus.interfaceSoundSync = text * 1
                    }
                }
                Row {
                    Text {
                        text: "dateTimeSet: "
                    }
                    TextField {
                        id: dateTime
                        Component.onCompleted: text = 0
                        onTextChanged: CarStatus.dateTimeSet = text * 1
                    }
                }
            }
        }

        GroupBox {
            title: "Button"
            Column {
                spacing: 2
                CheckBox {
                    id :autoSendGenSettings
                    text: "autoSendGenSettings"
                }
                Button {
                    text: "send general"
                    width: 100
                    onClicked: CarStatus.sendSettingsFrame()
                }
            }
        }

        CheckBox {
            checked: true
            text: "Open Serial"
            onClicked: CarStatus.active = checked
            Component.onCompleted: CarStatus.active = true
        }

        Timer {
            id: timerGenSettings
            interval: 100;
            running: autoSendGenSettings.checked;
            repeat: true
            onTriggered: {
                CarStatus.sendSettingsFrame()
            }
        }
    }
}
