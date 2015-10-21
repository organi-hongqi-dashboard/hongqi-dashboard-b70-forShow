import QtQuick 2.2

Rectangle {
	id: rightPanel

    SpeedDisk {
        id: speedDisk
	}


    WaterTempBar {
        id: waterTempBar
    }

    states: [
        State {
            name: ""
            PropertyChanges { target: speedDisk; state: ""}
            PropertyChanges { target: waterTempBar; state: "" }
        },
        State {
            name: "show"
            PropertyChanges { target: speedDisk; state: "show" }
            PropertyChanges { target: waterTempBar; state: "show" }
        }
    ]
}
