import { DialogExample } from './DialogExample'
import { VariableExample } from './VariableExample'
import { CounterExample } from './CounterExample'
import { LayoutExample } from './LayoutExample'

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.controller }) {
      TabContent() {
        DialogExample()
      }
      .tabBar('对话框')

      TabContent() {
        VariableExample()
      }
      .tabBar('变量')

      TabContent() {
        CounterExample()
      }
      .tabBar('计数器')

      TabContent() {
        LayoutExample()
      }
      .tabBar('布局')
    }
    .width('100%')
    .height('100%')
  }
}
