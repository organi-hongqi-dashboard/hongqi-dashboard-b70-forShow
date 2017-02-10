import QtQuick 2.2

Rectangle {
	id: centrePanel

    property bool carDoorValue: CarStatus.rfDoor || CarStatus.lfDoor || CarStatus.rrDoor || CarStatus.lrDoor ||
                                CarStatus.trunkDoor || CarStatus.hoodDoor
    property bool isEnergyFlowShow: false//CarStatus.isEnergyFlowShow

//    onCarDoorValueChanged: {
//        if(true === carDoorValue) {
//            carDoorPanel.state = "show";
//            displayWindow.state = "";
//        } else {
//            carDoorPanel.state = "";
//            displayWindow.state = "show";
//        }
//    }

    CarDoorPanel {
        id: carDoorPanel
        opacity: carDoorValue
    }
    DisplayWindow {
        id: displayWindow
        opacity: {
            if (isEnergyFlowShow || carDoorValue)
                return 0.0;
            else
                return 1.0;
        }
    }
    CentreInfo {
        id: centreInfo
    }

    EnergyFlow {
        id: energyflow
        visible: {
            if (true == carDoorValue)
                return false;
            else
                return isEnergyFlowShow;
        }
    }

    states: [
        State {
            name: ""
            PropertyChanges { target: centreInfo; state: "" }
        },
        State {
            name: "show"
            PropertyChanges { target: centreInfo; state: "show" }
        }
    ]
}
