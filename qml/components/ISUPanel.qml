import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {

    id: root

    property string title: "ISU"

    radius: 10

    color: "#2A2F36"

    border.color: "#404854"
    border.width: 1

    ColumnLayout {

        anchors.fill: parent
        anchors.margins: 18
        spacing: 14

        // HEADER
        RowLayout {

            Layout.fillWidth: true

            Label {

                text: root.title

                color: "white"

                font.pixelSize: 22

                font.bold: true
            }

            Item {
                Layout.fillWidth: true
            }

            StatusLed {

                status: "Offline"
            }

        }

        Rectangle{

            Layout.fillWidth: true
            height:1

            color:"#404854"
        }

        // POWER

        RowLayout{

            spacing:8

            Label{

                text:"⚡"

                font.pixelSize:18
            }

            Label{

                text:"Power"

                color:"#D6D6D6"

                font.bold:true
            }

            Item{
                Layout.fillWidth:true
            }

            Label{

                text:"OFF"

                color:"#F44336"

                font.bold:true
            }

        }

        // MODE

        ColumnLayout{

            spacing:5

            Label{

                text:"Mode"

                color:"#D6D6D6"

                font.bold:true
            }

            ComboBox{

                Layout.fillWidth:true

                model:[
                    "Normal",
                    "Test",
                    "Maintenance"
                ]
            }

        }

        // BUTTONS

        RowLayout{

            Layout.fillWidth:true

            spacing:8

            Button{

                Layout.fillWidth:true

                text:"🔌 Connect"
            }

            Button{

                Layout.fillWidth:true

                text:"⛔ Disconnect"
            }

            Button{

                Layout.fillWidth:true

                text:"⚡ Power"
            }

        }

        ThreeStateSwitch{

            Layout.fillWidth:true

        }

        Item{

            Layout.fillHeight:true

        }

    }

}