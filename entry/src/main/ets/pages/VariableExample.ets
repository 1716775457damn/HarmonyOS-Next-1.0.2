let myname: string = 'thewang'

@Component
export struct VariableExample {
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