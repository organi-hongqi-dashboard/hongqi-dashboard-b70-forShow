import QtQuick 2.4
import QtQuick.Window 2.1
import QtQuick.Controls 1.2

Rectangle {
    width: 1280
    height: 900

    Row {
        x: 25
        anchors.verticalCenter: parent.verticalCenter
        GeneralInfo {
            id: generalInfo
        }
        Loader {
            id: specialInfo
            active: true
            source: "qrc:/SpecialInfo.qml"
        }
    }
}
