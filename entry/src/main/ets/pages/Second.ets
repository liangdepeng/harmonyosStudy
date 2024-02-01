import router from '@ohos.router'

@Entry
@Component
struct Second {
  @State msg: string = 'Hi HERE'

  build() {
    Row() {
      Column() {
        Text(this.msg)
          .fontColor(Color.Blue)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button() {
          Text('back')
            .fontColor(Color.White)
            .fontSize(24)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor(Color.Blue)
        .height('5%')
        .width('40%')
        .onClick((event) => {
          router.back()
        })

      }.width('100%')
    }.height('100%')
  }
}