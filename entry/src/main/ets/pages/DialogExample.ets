@Component
export struct DialogExample {
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