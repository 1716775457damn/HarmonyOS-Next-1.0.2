//第一节：状态变量与界面刷新
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Column() {
        Button('这是一个对话框')
          .onClick(() => {
            console.log('log:', '对话框')
            AlertDialog.show({
              message: '这是一个对话框框'
            })
          })
        Text('这是一个文本')
          .onClick(() => {
            console.log('log:', '文本')
            AlertDialog.show({
              message: '这是一个文本组件'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}

///////////////////////////////////////////////////////////////
//第二节：普通变量与状态变量的区别
let myname: string = 'thewang'
@Entry
@Component
struct Index {
  myage: number = 19
  @State mymsg: string = 'hello thewang'

  build() {
    Column() {
      Text(myname).onClick(() => {
        myname = 'thetwo'
        console.log('myname', myname)
      })
      Text(this.myage.toString()).onClick(() => {
        this.myage = 18
        console.log('age', this.myage)
      })
      Text(this.mymsg).onClick(() => {
        this.mymsg = 'hello'
      })
    }
  }
}
////////////////////////////////////////////
//第三节：计数器案例
@Entry
@Component
struct Index {
  @State count: number = 1

  build() {
    Row() {
      Button('-')
        .onClick(() => {
          this.count = this.count - 1
        })
      Text(this.count.toString()).margin(10)
      Button('+')
        .onClick(() => {
          this.count = this.count + 1
        })
    }
    .padding(20)
  }
}

///////////////////////////////////////////////////////////
//第四节：组件布局基础
@Entry
@Component
struct Index {
  build() {
    Column() {
      // 外层Column，设置间距为8
      Column({ space: 8 }) {
        // 用颜色填充代替图片，使用Stack组件
        Stack()
          .width('100%')
          .height(200) // 设置高度，根据实际情况调整
          .backgroundColor('gray') // 设置背景颜色，这里用灰色示例
          .borderRadius({ topLeft: 6, topRight: 6 }) // 设置圆角

        // 标题文字
        Text('这是标题，颜色填充部分可以换成图片')
          .fontSize(14)
          .lineHeight(18)
          .padding({ left: 5, right: 5 })

        // 来源和点赞
        Row() {
          // 来源
          Row() {
            Stack()
              .width(16)
              .height(16) // 设置高度，根据实际情况调整
              .backgroundColor('blue') // 设置背景颜色，这里用蓝色示例
              .margin({ right: 3 })
            Text('用户名称')
              .fontSize(12)
              .fontColor('#7e7e7e')
          }

          // 点赞
          Row() {
            Stack()
              .width(14)
              .height(14) // 设置高度，根据实际情况调整
              .backgroundColor('red') // 设置背景颜色，这里用红色示例
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
