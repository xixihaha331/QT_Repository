import QtQuick 2.8
import QtQuick.Window 2.2
Window{
    width: 800
    height: 200
   Rectangle{
       id: rectangle1
       width:100
       height: 100
       color: "green"
       border.color: "green"
       opacity: (800-rectangle1.x)/800
       MouseArea{
           anchors.fill: rectangle1
           drag.target: rectangle1
           drag.axis: Drag.XAxis
           onClicked: {
               if(mouse.button == Qt.LeftButton){
                   rectangle1.color = 'yellow'
               }else if(mouse.button == Qt.RightButton){
                   rectangle1.color = 'red'
               }
           }
           onDoubleClicked: {
                if((mouse.button == Qt.LeftButton) && (mouse.modifiers & Qt.ShiftModifier)){
                    rectangle1.color = 'green'
                    rectangle1.border.color = 'black'
                }
           }
           onWheel: {
               //anchors.fill:  rectangle1
               if(wheel.modifiers & Qt.ControlModifier){
                   if(wheel.angleDelta.y > 0){
                       text.font.pointSize += 1
                   }else if(wheel.angleDelta.y < 0){
                       text.font.pointSize -= 1
                   }
               }
           }

       }
   }
   Text{
       id: text
       anchors.centerIn: rectangle1
       text: "QT"
   }
}
