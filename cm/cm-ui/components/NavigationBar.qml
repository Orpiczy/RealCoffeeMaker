import QtQuick 2.15
import assets 1.0

Item{

    property bool isCollapsed: true

    anchors {
        top: parent.top
        bottom: parent.bottom
        left: parent.left
    }

    width: isCollapsed ? Style.widthNavigationBarCollapsed : Style.heightNavigationBarExpanded

    Rectangle {
        anchors.fill: parent
        color: Style.colourNavigationBarBackground

        Column {
            width: parent.width

            NavigationButton {
                iconCharacter: "\uf0c9"
                description: ""
                hoverColour: "#993333"
                onNavigationButtonClicked: isCollapsed = !isCollapsed
            }
            NavigationButton {
                iconCharacter: "\uf015"
                description: "Machine Status"
                onNavigationButtonClicked: masterController.ui_navigationController.goDashboardView();
            }
            NavigationButton {
                iconCharacter: "\uf080"
                description: "Analytics"
                onNavigationButtonClicked: masterController.ui_navigationController.goCreateClientView();
            }

            NavigationButton {
                iconCharacter: "\uf059"
                description: "Help Center"
                onNavigationButtonClicked: masterController.ui_navigationController.goFindClientView();
            }
        }
    }
}

