import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "components"

ApplicationWindow {


    id: window

    ListModel {
        id: logModel
    }

    visible: true

    width: 1400
    height: 900

    minimumWidth: 1200
    minimumHeight: 700

    title: "ISU Control Panel"


    Rectangle {

        anchors.fill: parent

        color: "#1B1F24"

        ColumnLayout {

            anchors.fill: parent

            anchors.margins: 15

            spacing: 15

            Header {

                Layout.fillWidth: true

            }

            GridLayout {

                Layout.fillWidth: true
                Layout.preferredHeight: 650

                columns: 2

                rowSpacing: 15
                columnSpacing: 15

                ISUPanel {

                    Layout.fillWidth: true
                    Layout.preferredHeight: 320

                    title: "ISU A-1"

                    onLogRequested: {

                        var t = Qt.formatTime(new Date(), "HH:mm:ss")

                        logModel.append({
                            "time": t,
                            "level": level,
                            "message": message
                        })
                    }

                }

                ISUPanel {

                    Layout.fillWidth: true
                    Layout.preferredHeight: 320

                    title: "ISU A-2"

                    onLogRequested: {

                        var t = Qt.formatTime(new Date(), "HH:mm:ss")

                        logModel.append({
                            "time": t,
                            "level": level,
                            "message": message
                        })
                    }

                }

                ISUPanel {

                    Layout.fillWidth: true
                    Layout.preferredHeight: 320

                    title: "ISU B-1"

                    onLogRequested: {

                        var t = Qt.formatTime(new Date(), "HH:mm:ss")

                        logModel.append({
                            "time": t,
                            "level": level,
                            "message": message
                        })
                    }

                }

                ISUPanel {

                    Layout.fillWidth: true
                    Layout.preferredHeight: 320

                    title: "ISU B-2"

                    onLogRequested: {

                        var t = Qt.formatTime(new Date(), "HH:mm:ss")

                        logModel.append({
                            "time": t,
                            "level": level,
                            "message": message
                        })
                    }

                }

            }

            SystemLog {

                Layout.fillWidth: true

                model: logModel

            }

            TabBar {

                Layout.fillWidth: true

                TabButton {

                    text: "Yazılım Yükleme"

                }

                TabButton {

                    text: "Veri Görüntüleme"

                }

            }

        }

    }

}