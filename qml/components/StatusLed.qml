import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

RowLayout {

    property string status: "Offline"

    spacing: 8

    Rectangle {

        width: 14
        height: 14
        radius: 7

        color:
            status === "Ready" ? "#4CAF50" :
            status === "Fault" ? "#F44336" :
            "#7A7A7A"
    }

    Label {

        text: status

        color: "white"

        font.pixelSize: 15
    }

}