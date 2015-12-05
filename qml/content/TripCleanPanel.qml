import QtQuick 2.2

Item {
    id: tripCleanPanel
    y: 600

	Image {
        id: background
        x: 757
        y: 240
        source: "qrc:/images/images/menuPanel/background.png"
    }


    Text {
        id: tipForTripClean
        anchors.horizontalCenter: background.horizontalCenter
        color: "red"
        anchors.top: background.top
        anchors.topMargin: 60
        font.pixelSize: 40
        font.family: fontName.fontCurrent
        text: "小计里程清零 ?"
    }

	// ok
	Image {
        id: okBlow
        x: 791
        y: 399
        visible: true
        source: "qrc:/images/images/menuPanel/okBlow.png"
	}
	Text {
        id: ok
		anchors.centerIn: okBlow
		color: "white"
        font.pixelSize: 28
        font.family: fontName.fontCurrent
        text: "确认"
	}

	// cancel
	Image {
        id: cancelBlow
        x: 1000
        y: 399
		visible: false
        source: "qrc:/images/images/menuPanel/okBlow.png"
	}
	Text {
        id: cancel
		anchors.centerIn: cancelBlow
		color: "white"
        font.pixelSize: 28
        font.family: fontName.fontCurrent
        text: "取消"
	}

	property var dateTime
	property int currentIndex: 0
	onCurrentIndexChanged: {
		okBlow.visible = false;
		cancelBlow.visible = false;

        switch (currentIndex) {
        case 0:
			okBlow.visible = true;
			break;
        case 1:
			cancelBlow.visible = true;
			break;
		default:
            currentIndex = 0;
            okBlow.visible = true;
		}
	}

	function initMenu() {
		timer30s.restart()
        currentIndex = 0;
	}

	function nextIndex() {
		timer30s.restart();
		++currentIndex;
        currentIndex = currentIndex % 2;
	}

	function addDigit() {
        timer30s.restart();

		switch (currentIndex) {
        case 0:
            CarStatus.tripClean = true;

            tripCleanPanel.state = "";
			break;
        case 1:
            tripCleanPanel.state = "";
            break;
		default:
            tripCleanPanel.state = "";
			break;
        }
	}

	function subDigit() {
        timer30s.restart();

        switch (currentIndex) {
        case 0:
            CarStatus.tripClean = true;

            tripCleanPanel.state = "";
			break;
        case 1:
            tripCleanPanel.state = "";
            break;
		default:
            tripCleanPanel.state = "";
        }
	}

	onStateChanged: {
		initMenu();
	}
	Timer {
		id: timer30s
		interval: 30000
		running: false
		onTriggered: {
            tripCleanPanel.state = "";
			timer30s.running = false;
		}
	}
	states: [
		State {
			name: ""
            PropertyChanges { target: tripCleanPanel; y: 600 }

		},
		State {
			name: "show"
            PropertyChanges { target: tripCleanPanel; y: 0 }
		}
	]

	transitions: [
		Transition {
			from: ""
			to: "show"
            NumberAnimation { target: tripCleanPanel; property: "y"; duration: 300 }
		},
		Transition {
			from: "show"
			to:""
            NumberAnimation { target: tripCleanPanel; property: "y"; duration: 300 }
		}
	]

	Component.onCompleted: {
		initMenu();
	}
}
