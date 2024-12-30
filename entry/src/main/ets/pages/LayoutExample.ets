@Component
export struct LayoutExample {
  build() {
    Column() {
      Column({ space: 8 }) {
        Stack()
          .width('100%')
          .height(200)
          .backgroundColor('gray')
          .borderRadius({ topLeft: 6, topRight: 6 })

        Text('这是标题，颜色填充部分可以换成图片')
          .fontSize(14)
          .lineHeight(18)
          .padding({ left: 5, right: 5 })

        Row() {
          Row() {
            Stack()
              .width(16)
              .height(16)
              .backgroundColor('blue')
              .margin({ right: 3 })
            Text('用户名称')
              .fontSize(12)
              .fontColor('#7e7e7e')
          }

          Row() {
            Stack()
              .width(14)
              .height(14)
              .backgroundColor('red')
              .margin({ right: 3 })
            Text('8888')
              .fontSize(12)
              .fontColor('#7e7e7e')
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ left: 5, right: 5 })
      }
      .width('50%')
    }
    .padding(20)
  }
} 