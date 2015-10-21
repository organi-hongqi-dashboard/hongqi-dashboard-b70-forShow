import QtQuick 2.2

Rectangle {
	id: leftPanel


    SocBar {
        id: socBar
        state: ""
    }

    PowerKw {
        id: powerKwBar
        state: ""
    }

    OilBar {
        id: oilBar
        state: ""
    }

    states: [
        State {
            name: ""
            PropertyChanges { target: socBar; state: ""}
            PropertyChanges { target: powerKwBar; state: "" }
            PropertyChanges { target: oilBar; state: "" }
        },
        State {
            name: "show"
            PropertyChanges { target: socBar; state: "show" }
            PropertyChanges { target: powerKwBar; state: "show" }
            PropertyChanges { target: oilBar; state: "show" }
        }
    ]
}
