import QtQuick 2.4
import QtQuick.Controls 1.2

Row {
    GroupBox {
        title: "Special SettingsInfo"

        Column {
            spacing: 2
            MText {
                mtext1: "odoClean: "
                mtext2: SerialTran.odoClean
            }
            MText {
                mtext1: "doorInterface: "
                mtext2: SerialTran.doorInterface
            }
        }
    }

    GroupBox {
        title: "SpecialInfo"

        Column {
            spacing: 2

            Row {
                Text {
                    text: "motorPower: "
                }
                TextField {
                    id: motorPower
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.motorPower = text * 1
                }
            }
            Row {
                Text {
                    text: "indicatedCharging: "
                }
                TextField {
                    id: indicatedCharging
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.indicatedCharging = text * 1
                }
            }
            CheckBox {
                text: "indicatedPlugIn"
                onClicked: SerialTran.indicatedPlugIn = checked
            }
            CheckBox {
                text: "batteryFault"
                onClicked: SerialTran.batteryFault = checked
            }
            CheckBox {
                text: "batteryDisconnect"
                onClicked: SerialTran.batteryDisconnect = checked
            }
            CheckBox {
                text: "motorOverheating"
                onClicked: SerialTran.motorOverheating = checked
            }
            Row {
                Text {
                    text: "vehicleReady: "
                }
                TextField {
                    id: vehicleReady
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.vehicleReady = text * 1
                }
            }
            Row {
                Text {
                    text: "insulationFault: "
                }
                TextField {
                    id: insulationFault
                    Component.onCompleted: text = 0
                    onTextChanged: SerialTran.insulationFault = text * 1
                }
            }
            CheckBox {
                text: "parkBreak"
                onClicked: SerialTran.parkBreak = checked
            }
            CheckBox {
                text: "safetyBelt"
                onClicked: SerialTran.safetyBelt = checked
            }
            CheckBox {
                text: "nearBeam"
                onClicked: SerialTran.nearBeam = checked
            }
            CheckBox {
                text: "positionLight"
                onClicked: SerialTran.positionLight = checked
            }
            CheckBox {
                text: "frontFogLight"
                onClicked: SerialTran.frontFogLight = checked
            }
            CheckBox {
                text: "rearFogLight"
                onClicked: SerialTran.rearFogLight = checked
            }
            CheckBox {
                text: "highBeam"
                onClicked: SerialTran.highBeam = checked
            }
            CheckBox {
                text: "turnLeftLight"
                onClicked: SerialTran.turnLeftLight = checked
            }
            CheckBox {
                text: "turnRightLight"
                onClicked: SerialTran.turnRightLight = checked
            }
        }
    }
}
