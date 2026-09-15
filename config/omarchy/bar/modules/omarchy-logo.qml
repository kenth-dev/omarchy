import QtQuick
import Quickshell
import qs.Commons

Item {
  id: root

  property var bar: null
  property string moduleName: "omarchy-logo"
  property var settings: ({})

  visible: true
  implicitWidth: 32
  implicitHeight: 32

  Image {
    anchors.centerIn: parent
    width: 22
    height: 22
    source: "file:///home/kenth-dev/Downloads/logo.png"
    fillMode: Image.PreserveAspectFit
    smooth: true
  }

  MouseArea {
    anchors.fill: parent
    acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MiddleButton
    cursorShape: Qt.PointingHandCursor
    onClicked: function(mouse) {
      if (!root.bar) return
      if (mouse.button === Qt.RightButton) root.bar.run("xdg-terminal-exec")
      else root.bar.run("omarchy-shell shell toggle omarchy.menu '{\"menu\":\"root\"}'")
    }
  }
}
