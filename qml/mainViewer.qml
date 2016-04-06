import QtQuick 2.2
import QtQuick.Window 2.2
import "content"

Window {
    id: main
    width: 1920
    height: 720
    color: "black"
    visible: true

    Rectangle {
        id: b70
        color: "black"

        property bool valueDisplayMode: CarStatus.displayMode
//        onValueDisplayModeChanged: {
//            changeState();
//        }
//        function changeState() {
//            if(true === valueDisplayMode) {
//                mainPanel.state = "";
//                chargePanel.state = "show";
//            } else {
//                mainPanel.state = "show";
//                chargePanel.state = "";
//            }
//        }

        MainPanel {
            id: mainPanel
            state: "show"
            visible: !b70.valueDisplayMode
        }
        ChargePanel {
            id: chargePanel
            state: "show"
            visible: b70.valueDisplayMode
        }

//        Fps {
//            id: fps
//        }

//        transitions: [
//            Transition {
//                from: ""
//                to: "show"
//                SequentialAnimation {
////                    ScriptAction {
////                        script: {
////                            chargePanel.state = "show";
////                            mainPanel.state = "";
////                        }
////                    }
////                    PauseAnimation { duration: 1400 }
//                    ScriptAction {
//                        script: {
//                            chargePanel.state = "";
//                            mainPanel.state = "show";
//                        }
//                    }
////                    PauseAnimation { duration: 1400 }
////                    ScriptAction {
////                        script: {
////                            chargePanel.state = "";
////                            mainPanel.state = "show";
////                        }
////                    }
//                }
//            }
//        ]

//        Component.onCompleted: {
//            b70.state = "show";
//        }
    }
}
