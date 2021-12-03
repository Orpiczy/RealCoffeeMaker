import QtQuick 2.12
import QtQuick.Controls 2
import QtQuick.Layouts 1.12
import assets 1.0
import CM 1.0
Item {
     property MapDecorator mapDecorator
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


                CMIndicator{
                    text: "Brew<br>Basket"
                    status: mapDecorator.ui_value0 == 1
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }


                CMIndicator{
                    text: "Warming<br>Plate"
                    status: mapDecorator.ui_value3 == 1
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }


                CMIndicator{
                    text: "Decanter"
                    status:mapDecorator.ui_value2 == 1
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }

                CMIndicator{
                    text: "Grinding<br>Chamber"
                    status: mapDecorator.ui_value4 == 1
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }


            }
        }
    }
}

