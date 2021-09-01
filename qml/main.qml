
import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 2.0

Window {
    id: window

    title: qsTr("Hello World")

    Text
    {
		id: textLabel
        text: "Hello World"
        anchors.centerIn: parent
    }
	
	Button {
		id: myButton
		text: "Ok"
		onClicked: {
			textLabel.text += myTextField.text
		}
		anchors.top: textLabel.bottom
		anchors.horizontalCenter: textLabel.horizontalCenter
	}
	
	TextField {
	    id: myTextField
	    text: "!"
        
	    anchors.top: myButton.bottom
		anchors.horizontalCenter: myButton.horizontalCenter
	}

    Component.onCompleted:
    {
        console.log("Hello World From Main.qml")

        // On mobile device application auto scale
        if(Qt.platform.os != "ios" && Qt.platform.os != "android")
        {
            width = 640
            height = 480
        }

        // Turn on visibility after setting the size explictly.
        visible = true
    }
}