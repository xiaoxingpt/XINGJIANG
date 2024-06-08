@Entry
@Component
struct Index {
  fruitsData:Array<Object>=[
    {
    id :'1',
    name:'苹果',
    vote:'12306'
    },
    {
      id :'2',
      name:'葡萄',
      vote:'11306'
    },
    {
      id :'3',
      name:'西瓜',
      vote:'10306'
    },
    {
      id :'4',
      name:'榴莲',
      vote:'1306'
    },
    {
      id :'5',
      name:'凤梨',
      vote:'1206'
    },
    {
    id :'6',
    name:'哈密瓜',
    vote:'1106'
    }]
  fruitsData2:Array<Object>=[
    {
      id :'1',
      name:'西瓜',
      vote:'12306'
    },
    {
      id :'2',
      name:'李子',
      vote:'11306'
    },
    {
      id :'3',
      name:'苹果',
      vote:'10306'
    },
    {
      id :'4',
      name:'榴莲',
      vote:'1306'
    },
    {
      id :'5',
      name:'凤梨',
      vote:'1206'
    },
    {
      id :'6',
      name:'哈密瓜',
      vote:'1106'
    }]
  @State isSwitchData :Boolean=true
  build() {
    Column(){
      // 标题栏
      Row(){
        Row(){
          Image($r('app.media.startIcon'))
            .width(22)
            .height(22)
            .margin({
              right:18
            })
          Text('排行榜')
            .fontSize(20)
        }
        .width('50%')
        .height('100%')

        Row(){
          Image($r('app.media.img'))
            .width(30)
            .height(30)
            .margin({
             left:120
            })
            .onClick(()=>{
              this.isSwitchData=!this.isSwitchData
            })

        }
        .width('50%')
        .height('100%')
      }
      .width('100%')
      .height(47)
      // 排行榜表头
      Row(){
        Text('排行榜')
          .fontSize(14)
          .fontColor('#989a9c')
          .width('30%')
        Text('种类')
          .fontSize(14)
          .fontColor('#989a9c')
          .width('50%')
        Text('得票数')
          .fontSize(14)
          .fontColor('#989a9c')
          .width('20%')
      }
      .width('90%')
      .padding(15)
      // 排行榜表项目
      Column(){
          List(){
            ForEach(this.isSwitchData ? this.fruitsData : this.fruitsData2,(item)=>{
              ListItem(){
                  Row(){
                    if(item.id<=3){
                       Column(){
                         Row(){
                            Text(item.id)
                              .fontColor(Color.White)
                              .fontSize(14)
                         }
                         .width(24)
                         .height(24)
                         .backgroundColor(Color.Blue)
                         .borderRadius(24)
                         .justifyContent(FlexAlign.Center)
                       }
                       .width('30%')
                      .alignItems(HorizontalAlign.Start)
                    }else{
                      Column() {
                        Text(item.id)
                          .fontSize(16)
                          .fontWeight(FontWeight.Bold)
                          .width(24)
                          .textAlign(TextAlign.Center)
                      }
                      .width('30%')
                      .alignItems(HorizontalAlign.Start)
                    }


                    Text(item.name)
                      .fontSize(16)
                      .fontWeight(FontWeight.Bold)
                      .width('50%')

                    Text(item.vote)
                      .fontSize(16)
                      .fontWeight(FontWeight.Bold)
                      .width('20%')
                  }
              }
              .width('100%')
              .height(47)

            })
          }
      }
      .width('90%')
      .padding(15)
      .backgroundColor(Color.White)
      .borderRadius(18)

     }
    .width('100%')
    .height('100%')
    .backgroundColor('#f1f3f5')
    .padding({
      left:26,
      right:26
    })
    .margin({

    })



  }
}