import QtQuick 2.12
import QtQuick.Controls 2
import QtQuick.Layouts 1.12
import assets 1.0

Item {
    ColumnLayout{
        anchors{
            topMargin: 15
            bottomMargin: 20
            fill: parent
        }
        Item{
            implicitHeight: title.height
            implicitWidth: parent.width
            Text {
                id: title
                text: "Controls"
                font.family: "Helvetica"
                font.pointSize: 24
                horizontalAlignment: Text.AlignHCenter
                anchors.centerIn: parent
            }

        }
        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
            GridLayout{
                anchors{
                    fill: parent
                    margins: 10
                }
                rows: 3
                columns: 2


                CMBasicSwitch{
                    text: "Turn On/Off"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                CMBasicSwitch{
                    text: "Light On/Off"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }


                CMBasicSwitch{
                    text: "Clean"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                CMBasicSwitch{
                    text: "Powersaving"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                CMBasicSwitch{
                    text: "Card<br>Payment"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                CMBasicSwitch{
                    text: "Locks"
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
            }
        }
    }
}

