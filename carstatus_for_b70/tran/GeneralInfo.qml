import QtQuick 2.4
import QtQuick.Controls 1.2

Row {

    GroupBox {
        title: "GeneralInfo"

        Column {
            spacing: 2

            Row {
                Text {
                    text: "tmpVersion "
                }
                TextField {
                    id: tmpVersion
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.tmpVersion = text * 1
                }
            }
            Row {
                Text {
                    text: "relVersion: "
                }
                TextField {
                    id: relVersion
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.relVersion = text * 1
                }
            }
            Row {
                Text {
                    text: "hwVersion: "
                }
                TextField {
                    id: hwVersion
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.hwVersion = text * 1
                }
            }
            Row {
                Text {
                    text: "rpm(0-8000): "
                }
                TextField {
                    id: rpm
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.rpm = text * 1
                }
            }
            Row {
                Text {
                    text: "dateTime: "
                }
                TextField {
                    id: dateTime
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.dateTime = text * 1
                }
            }
            Row {
                Text {
                    text: "speed(0-240): "
                }
                TextField {
                    id: speed
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.speed = text * 1
                }
            }
            Row {
                Text {
                    text: "waterTemp(0 ~ 100): "
                }
                TextField {
                    id: waterTemp
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.waterTemp = text * 1
                }
            }
            CheckBox {
                text: "key1"
                onClicked: SerialTran.key1 = checked
            }
            CheckBox {
                text: "key2"
                onClicked: SerialTran.key2 = checked
            }
            CheckBox {
                text: "key3"
                onClicked: SerialTran.key3 = checked
            }
            CheckBox {
                text: "key4"
                onClicked: SerialTran.key4 = checked
            }
            CheckBox {
                text: "igOn"
                onClicked: SerialTran.igOn = checked
            }
            Row {
                Text {
                    text: "gear(0-7): "
                }
                TextField {
                    id: gear
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.gear = text * 1
                }
            }
            Row {
                Text {
                    text: "gearMode(0-1): "
                }
                TextField {
                    id: gearMode
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.gearMode = text * 1
                }
            }
            Row {
                Text {
                    text: "keyStatus(0-3): "
                }
                TextField {
                    id: keyStatus
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.keyStatus = text * 1
                }
            }
            CheckBox {
                text: "lfDoor"
                onClicked: SerialTran.lfDoor = checked
            }
            CheckBox {
                text: "rfDoor"
                onClicked: SerialTran.rfDoor = checked
            }
            CheckBox {
                text: "lrDoor"
                onClicked: SerialTran.lrDoor = checked
            }
            CheckBox {
                text: "rrDoor"
                onClicked: SerialTran.rrDoor = checked
            }
            CheckBox {
                text: "hoodDoor"
                onClicked: SerialTran.hoodDoor = checked
            }
            CheckBox {
                text: "trunkDoor"
                onClicked: SerialTran.trunkDoor = checked
            }
            CheckBox {
                text: "doorWarningLight"
                onClicked: SerialTran.doorWarningLight = checked
            }
            Row {
                Text {
                    text: "odo(0-999999): "
                }
                TextField {
                    id: odo
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.odo = text * 1
                }
            }
            Row {
                Text {
                    text: "avgSpeed(0-240): "
                }
                TextField {
                    id: avgSpeed
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.avgSpeed = text * 1
                }
            }
//            CheckBox {
//                text: "avgFuelUnit"
//                onClicked: SerialTran.avgFuelUnit = checked
//            }
//            CheckBox {
//                text: "instantaneousFuelUnit"
//                onClicked: SerialTran.instantaneousFuelUnit = checked
//            }
            Row {
                Text {
                    text: "remainMileage(50-999): "
                }
                TextField {
                    id: remainMileage
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.remainMileage = text * 1
                }
            }
            Row {
                Text {
                    text: "trip1(0-9999<*.1>): "
                }
                TextField {
                    id: trip1
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.trip1 = text * 1
                }
            }
            Row {
                Text {
                    text: "fuel(0~100): "
                }
                TextField {
                    id: fuel
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.fuel = text * 1
                }
            }
            Row {
                Text {
                    text: "trip2(0-9999<*.1>): "
                }
                TextField {
                    id: trip2
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.trip2 = text * 1
                }
            }
            Row {
                Text {
                    text: "soc(0~100): "
                }
                TextField {
                    id: soc
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.soc = text * 1
                }
            }
            Row {
                Text {
                    text: "maintenanceMileage: "
                }
                TextField {
                    id: maintenanceMileage
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.maintenanceMileage = text * 1
                }
            }
            Row {
                Text {
                    text: "outTemp: "
                }
                TextField {
                    id: outTemp
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.outTemp = text * 1
                }
            }
            Row {
                Text {
                    text: "avgFuel: "
                }
                TextField {
                    id: avgFuel
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.avgFuel = text * 1
                }
            }
            Row {
                Text {
                    text: "instantaneousFuel: "
                }
                TextField {
                    id: instantaneousFuel
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.instantaneousFuel = text * 1
                }
            }
            Row {
                Text {
                    text: "batteryCurrent(0~25000<*.1 offset -500>): "
                }
                TextField {
                    id: batteryCurrent
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.batteryCurrent = text * 1
                }
            }
            Row {
                Text {
                    text: "batteryVoltage(0~1000<*.1>): "
                }
                TextField {
                    id: batteryVoltage
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.batteryVoltage = text * 1
                }
            }


        }
    }

    GroupBox {
        title: "General SettingsInfo"

        Column {
            spacing: 2

            MText {
                mtext1: "commandReq: "
                mtext2: SerialTran.commandReq
            }
            MText {
                mtext1: "closeReq: "
                mtext2: SerialTran.closeReq
            }
            MText {
                mtext1: "tripClean: "
                mtext2: SerialTran.tripClean
            }
            MText {
                mtext1: "avgSpeedClean: "
                mtext2: SerialTran.avgSpeedClean
            }
            MText {
                mtext1: "avgFuelClean: "
                mtext2: SerialTran.avgFuelClean
            }
            MText {
                mtext1: "projectMode: "
                mtext2: SerialTran.projectMode
            }
            MText {
                mtext1: "alarmInterface: "
                mtext2: SerialTran.alarmInterface
            }
            MText {
                mtext1: "interfaceSoundSync: "
                mtext2: SerialTran.interfaceSoundSync
            }
            MText {
                id: dateTimeSet
                mtext1: "dateTimeSet: "
                mtext2: SerialTran.dateTimeSet
                onMtext2Changed: dateTimeSet.mtext3 = dateTime2String()
            }



            CheckBox {
                text: "flowGearBox"
                onClicked: SerialTran.flowGearBox = checked
            }
            CheckBox {
                text: "flowBattery"
                onClicked: SerialTran.flowBattery = checked
            }
            Row {
                Text {
                    text: "vehicleWorkingMode: "
                }
                TextField {
                    id: vehicleWorkingMode
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.vehicleWorkingMode = text * 1
                }
            }
            Row {
                Text {
                    text: "flowBatFlow: "
                }
                TextField {
                    id:flowBatFlow
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.flowBatFlow = text * 1
                }
            }
            Row {
                Text {
                    text: "flowFrontWheel: "
                }
                TextField {
                    id:flowFrontWheel
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.flowFrontWheel = text * 1
                }
            }
            Row {
                Text {
                    text: "flowWheels: "
                }
                TextField {
                    id:flowWheels
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.flowWheels = text * 1
                }
            }
            Row {
                Text {
                    text: "flowMotor: "
                }
                TextField {
                    id:flowMotor
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.flowMotor = text * 1
                }
            }
        }
    }

    function dateTime2String() {
        var dateTime = new Date((SerialTran.dateTimeSet -8 * 3600) * 1000);
        var strDateTime = Qt.formatDateTime(dateTime, "yyyy-MM-dd");
        strDateTime += Qt.formatDateTime(dateTime, " hh:mm");
        return strDateTime;
    }
}
