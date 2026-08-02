import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

RowLayout {

    property bool powerOn: false

    spacing: 6

    Label {
        text: "⚡"
        font.pixelSize: 18
    }

    Label {
        text: powerOn ? "Power : ON" : "Power : OFF"

        color: powerOn ? "#4CAF50" : "#B0BEC5"

        font.bold: true
    }

}