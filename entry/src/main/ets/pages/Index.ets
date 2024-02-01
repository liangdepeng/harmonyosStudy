import router from '@ohos.router'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button() {
          Text('next')
            .fontWeight(FontWeight.Bold)
            .fontColor(Color.White)
            .fontSize(26)
        }
        .backgroundColor(Color.Blue)
        .type(ButtonType.Capsule)
        .width('40%')
        .height('5%')
        .margin({
          top: 20
        })
        .onClick((event) => {
          router.pushUrl({ url: 'pages/Second' })
            .then(() => {

          }).catch((err) => {

          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}