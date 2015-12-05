import QtQuick 2.2

Item {
	id: menuPanel
    y: 600
//    width: 230
//    height: 255

	Image {
        id: background
        x: 757
        y: 240
        source: "qrc:/images/images/menuPanel/background.png"
	}

	// hour
	Image {
        id: hourBlow
        x: 804
        y: 275
        source: "qrc:/images/images/menuPanel/hourblow.png"
	}
	Text {
		id: hour
		//		x: 58
		//		y: 26
		anchors.centerIn: hourBlow
		color: "white"
        font.pixelSize: 55
        font.family: fontName.fontCurrent
		text: "23"
	}

    Text {
        id: colon
        x: 946
        y: 278
        color: "white"
        font.pixelSize: 55
        font.family: fontName.fontCurrent
        text: ":"
    }

	// minute
	Image {
        id: minuteBlow
        x: 971
        y: 275
		visible: false
//		sourceSize: Qt.size(70,53)
        source: "qrc:/images/images/menuPanel/hourblow.png"
	}
	Text {
        id: minute
		anchors.centerIn: minuteBlow
		color: "white"
        font.pixelSize: 55
        font.family: fontName.fontCurrent
		text: "59"
	}

	// ok
	Image {
        id: okBlow
        x: 804
        y: 412
		visible: false
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
        x: 979
        y: 412
		visible: false
        source: "qrc:/images/images/menuPanel/okBlow.png"
	}
	Text {
		id: cancel
		//		x: 124
		//		y: 104
		anchors.centerIn: cancelBlow
		color: "white"
        font.pixelSize: 28
        font.family: fontName.fontCurrent
        text: "取消"
	}

	property var dateTime
	property int currentIndex: 0
	onCurrentIndexChanged: {

		hourBlow.visible = false;
        minuteBlow.visible = false;
		okBlow.visible = false;
		cancelBlow.visible = false;

		switch (currentIndex) {
		case 0:
			hourBlow.visible = true;
			break;
		case 1:
			minuteBlow.visible = true;
            break;
        case 2:
			okBlow.visible = true;
			break;
        case 3:
			cancelBlow.visible = true;
			break;
		default:
			currentIndex = 0;
			hourBlow.visible = true;
		}
	}

	function initMenu() {
		timer30s.restart()
		currentIndex = 0;
        var dateTemp = CarStatus.date + " " + CarStatus.time + ":00";
		dateTime = new Date(Date.parse(dateTemp.replace(/-/g,"/")));
		setTextDateTime();
	}

	function setTextDateTime() {
		hour.text = Qt.formatDateTime(dateTime, "hh");
        minute.text = Qt.formatDateTime(dateTime, "mm");
	}

	function nextIndex() {
		timer30s.restart();
		++currentIndex;
        currentIndex = currentIndex % 4;
	}

	function addDigit() {
		timer30s.restart();
		var date = dateTime.getDate()
		var month = dateTime.getMonth()
		var year = dateTime.getFullYear()

		switch (currentIndex) {
		case 0:
			if(dateTime.getHours() === 23)
				dateTime.setHours(dateTime.getHours() - 24);
			dateTime.setHours(dateTime.getHours() + 1);
			break;
		case 1:
			if(dateTime.getMinutes() === 59)
				dateTime.setMinutes(dateTime.getMinutes() - 60);
			dateTime.setMinutes(dateTime.getMinutes() + 1);
            break;
        case 2:
            if (dateTime.getTime() / 1000 < 4102444740 && dateTime.getTime() / 1000 >= 94665600)
            {
				dateTime.setSeconds(0); // set second 0
                CarStatus.dateTimeSet = dateTime.getTime() / 1000;
            }
			menuPanel.state = "";
            break;
        case 3:
            menuPanel.state = "";
            break;
		default:
			menuPanel.state = "";
			break;
		}
		setTextDateTime();
	}

	function subDigit() {
		timer30s.restart();
		var date = dateTime.getDate()
		var month = dateTime.getMonth()
		var year = dateTime.getFullYear()

		switch (currentIndex) {
		case 0:
			if(dateTime.getHours() === 0)
				dateTime.setHours(dateTime.getHours() + 24);
			dateTime.setHours(dateTime.getHours() - 1);
			break;
		case 1:
			if(dateTime.getMinutes() === 0)
				dateTime.setMinutes(dateTime.getMinutes() + 60);
			dateTime.setMinutes(dateTime.getMinutes() - 1);
            break;
        case 2:
			if (dateTime.getTime() / 1000 < 4102444740 && dateTime.getTime() / 1000 >= 946684800) {
				dateTime.setSeconds(0); // set second 0
                CarStatus.dateTimeSet = dateTime.getTime() / 1000;
			}
			menuPanel.state = "";
			break;
        case 3:
            menuPanel.state = "";
            break;
		default:
			menuPanel.state = "";
		}
		setTextDateTime();
	}

	onStateChanged: {
		initMenu();
	}
	Timer {
		id: timer30s
		interval: 30000
		running: false
		onTriggered: {
			menuPanel.state = "";
			timer30s.running = false;
		}
	}
	states: [
		State {
			name: ""
            PropertyChanges { target: menuPanel; y: 600 }

		},
		State {
			name: "show"
            PropertyChanges { target: menuPanel; y: 0 }
		}
	]

	transitions: [
		Transition {
			from: ""
			to: "show"
			NumberAnimation { target: menuPanel; property: "y"; duration: 300 }
		},
		Transition {
			from: "show"
			to:""
			NumberAnimation { target: menuPanel; property: "y"; duration: 300 }
		}
	]

	Component.onCompleted: {
		initMenu();
	}
}
