@Component
export struct CounterExample {
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