import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image{
        id:background
        source: "images//bk.jpg"
        anchors.fill:parent  //用当前元素填充parent

        Image {
            id: img0
            width: 500
            height: 300
            source: "images//01.png"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: img1
            width: 250
            height: 150
            source: "images//02.png"
            anchors.centerIn: parent

            Behavior on rotation {   //当发生旋转时
                NumberAnimation{  //旋转耗费时间为1秒
                    duration: 1000
                }
            }
        }

        MouseArea{  //每次点击鼠标，img1旋转360度
            anchors.fill: parent
            onClicked: img1.rotation+=360
        }
    }
}
