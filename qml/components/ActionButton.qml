import QtQuick 2.15
import QtQuick.Controls 2.15

Button {

    property color buttonColor: "#2196F3"
    property string iconText: ""

    text: iconText + " " + qsTr(text)

    font.bold: true

    background: Rectangle {
        radius: 6
        color: buttonColor
    }

    contentItem: Text {
        text: parent.text
        color: "white"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}