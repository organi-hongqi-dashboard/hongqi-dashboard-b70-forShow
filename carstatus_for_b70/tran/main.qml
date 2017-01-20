import QtQuick 2.4
import QtQuick.Window 2.0
import QtQuick.Controls 1.2

Rectangle {
    width: 1260
    height: 900

    Row {
        x: 5
        spacing: 2
        anchors.verticalCenter: parent.verticalCenter

        GeneralInfo {
            id: generalInfo
        }
        Loader {
            id: specialInfo
            active: true
            source: "qrc:/SpecialInfo.qml"
        }
        GroupBox {
            title: "Button"
            Column {
                spacing: 2
                CheckBox {
                    id: autoSendGeneral
                    text: "autoSendGeneral"
                }
                Button {
                    text: "send"
                    width: 100
                    onClicked: SerialTran.sendGeneralFrame()
                }

                CheckBox {
                    id:autoSendSpecial
                    text:"autoSendSpecial"
                }
                Button {
                    text: "send"
                    width: 100
                    onClicked: SerialTran.sendSpecialFrame()
                }
            }
        }
    }

    Timer {
        id: timerGeneral
        interval: 100;
        running: autoSendGeneral.checked;
        repeat: true
        onTriggered: {
            SerialTran.sendGeneralFrame()
        }
    }

    Timer {
        id: timerSpecial
        interval: 100;
        running: autoSendSpecial.checked;
        repeat: true
        onTriggered: {
            SerialTran.sendSpecialFrame()
        }
    }
}
