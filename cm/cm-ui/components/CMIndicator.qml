import QtQuick 2.0
import QtQuick.Controls 2.12
import assets 1.0
import CM 1.0

Item{
    property alias text: cmd.text
    property bool status: true
    Text {
        id: cmd
        text: "do"
        font.family: "Helvetica"
        font.pointSize: Style.cmFontSizeSwitches
        horizontalAlignment: Text.AlignHCenter
        anchors.left:parent.left
        anchors.leftMargin: Style.cmControlMargin
        anchors.verticalCenter: parent.verticalCenter
    }
    Rectangle{
        anchors.right:parent.right
        anchors.verticalCenter: parent.verticalCenter
        height: parent.height * 0.4
        width: height
        radius: width/2
        color: status ? "green" : "red"
        border.color: "#000000"
        anchors.rightMargin: 16
    }

}


