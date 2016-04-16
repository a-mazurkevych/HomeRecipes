import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480

    property bool bMenuVisible: true
    signal signalUpdateMenuItems()

    onSignalUpdateMenuItems: {
        menuModel.append({
                             "name": "Salat",
                             "color": "light green",
                             "image": ""
                         })
        menuModel.append({
                             "name": "Cake",
                             "color": "orange",
                             "image": ""
                         })
        menuModel.append({
                             "name": "Cocktail",
                             "color": "light blue",
                             "image": ""
                         })

        menuModel.append({
                             "name": "Salat",
                             "color": "gray",
                             "image": ""
                         })
        menuModel.append({
                             "name": "Cake",
                             "color": "green",
                             "image": ""
                         })
        menuModel.append({
                             "name": "Cocktail",
                             "color": "blue",
                             "image": ""
                         })
        menuModel.append({
                             "name": "Cocktail",
                             "color": "pink",
                             "image": ""
                         })
    }

    Rectangle{
        id: seceneHolder
        anchors.fill: parent
        color: "black"

        Rectangle{
            id: headerHolder
            width:  parent.width
            height: parent.height * 0.1
            //anchors
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 10

            color: "pink"

            Rectangle{
                id: menuButtonHolder
                height: parent.height
                width: height
                color: "transparent"

                Rectangle{
                    width: parent.width * 0.8
                    height: parent.height * 0.8
                    anchors.centerIn: parent
                    color: parent.color

                    Image {
                        id: menuOpen
                        source: "qrc:/HomePage/btn_menu.png"
                        anchors.fill: parent
                        visible: bMenuVisible
                    }

                    Image {
                        id: menuClose
                        source: "qrc:/HomePage/btn_close.png"
                        anchors.fill: parent
                        visible: !bMenuVisible
                    }
                }

                MouseArea{
                    id: menuButtonMouseArea
                    anchors.fill: parent
                    onClicked: {
                        bMenuVisible = !bMenuVisible;
                    }
                }
            }
        }

        Rectangle{
            id: menuHolder
            width: parent.width * 0.6
            height: parent.height * 0.7
            anchors.top: headerHolder.bottom
            visible: menuClose.visible
            color: "yellow"

            ListModel{
                id: menuModel
                ListElement{
                    name: ""
                    color: ""
                    image: ""
                }
            }

            ScrollView{
                id: menuScrollView
                anchors.fill: parent

                ListView{
                    id: menuItemsView
                    height: parent.height
                    width: parent.width * 0.9
                    anchors.centerIn: parent
                    model: menuModel

                    delegate: Rectangle{
                        id: menuDelegate
                        width: parent.width
                        height: 30
                        color: model.color

                        Text{
                            id: name
                            text: model.name
                            anchors.fill: parent
                        }
                    }
                }
            }
            onVisibleChanged: {
                if(visible)
                    signalUpdateMenuItems();
            }
        }
    }
}

