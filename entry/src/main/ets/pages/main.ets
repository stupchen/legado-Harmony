@Entry
@Component
struct Main {
  @State message: string = '这是应用主界面'

  @Builder TabBarBuilder(image: ResourceStr, index: number) {
    Column({ space: CommonConstants.SPACE_8 }) {
      Text(title)
        .fontSize(14)
        .fontColor(this.selectColor(index))
    }
  }

  build() {
    Tabs({ barPosition: BarPosition.End }) {

      TabContent() {
        Text('书架') //替换书架UI
      }
      .tabBar('书架')

      TabContent() {
        Text('发现') //替换发现UI
      }
      .tabBar('发现')

      TabContent() {
        Text('订阅')  //替换订阅UI
      }
      .tabBar('订阅')

      TabContent() {
        Text('我的') //替换我的UI
      }
      .tabBar('我的')

    }
    .width('100%')
    .height('100%')
    .onChange(index => this.currentIndex = index)
  }
}
