/*
 * Copyright (c) 2022 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import router from "@system.router"

import { Action } from '../../../../../../../../../common/src/main/ets/default/redux/actions/Action'
import { CaptureMode } from '../../../../../../../../../common/src/main/ets/default/setting/CaptureMode'
import { CLog } from '../../../../../../../../../common/src/main/ets/default/Utils/CLog'
import { EventBus } from '../../../../../../../../../common/src/main/ets/default/Utils/EventBus'
import EventBusManager from '../../../../../../../../../common/src/main/ets/default/Utils/EventBusManager'
import getStore from '../../../../../../../../../common/src/main/ets/default/redux/store'
//import { TabBarOther } from './TabBarTablet/TabBarOther'
//import { TabBarSame } from './TabBarTablet/TabBarSame'

let tabBarLandState = (state) => {
  return {
//    widthTabBar: state.PreviewReducer.widthTabBar,
//    opacityValueForTabBar: state.SettingReducer.opacityValueForTabBar
  }
}

let tabBarLandDispatcher = (dispatch) => {
  return {}
}

@Component
export struct TabBarLand {
  private TAG: string = '[TabBarLand]'
  @State state: any = {}
  @State opacityTabBar: number = 0
  @State isShowTabBarOther: boolean= false
  private mConnect: any
  appEventBus: EventBus = EventBusManager.getInstance().getEventBus()

  private aboutToAppear(): void {
    CLog.info(`${this.TAG} aboutToAppear invoke E`)
    this.mConnect = getStore().connect(tabBarLandState, tabBarLandDispatcher)(this.state)
    CLog.info(`${this.TAG} aboutToAppear invoke X`)
  }

  private aboutToDisappear(): void {
    CLog.info(`${this.TAG} aboutToDisappear invoke E`)
    this.mConnect.destroy()
    CLog.info(`${this.TAG} aboutToDisappear invoke X`)
  }

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.End }) {
      Flex({ direction: FlexDirection.ColumnReverse, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Start }) {
        Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
          Image($r("app.media.setting")).width(24).height(24)
            .onClick(() => {
              router.replace({
//                params: {
//                  position: this.cameraPosition,
//                  mode: this.previewImage
//                },
                uri: "pages/SettingView" })
            })
        }.width('100%').height('20%')

//        Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
//          TabBarOther()
//        }.width('100%').height('20%')
//        .opacity(this.state.opacityValueForTabBar)
//        .animation({
//          duration: 2000,
//          curve: Curve.Sharp,
//          delay: 0,
//          iterations: 1,
//          playMode: PlayMode.Normal
//        })
//
//        Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
//          TabBarSame()
//        }
//        .position({ y: this.state.widthTabBar })
//        .width('100%')
//        .height('20%')
//        .animation({
//          duration: 2000,
//          curve: Curve.Sharp,
//          delay: 0,
//          iterations: 1,
//          playMode: PlayMode.Normal
//        })
      }.width('100%').height(360).margin({ bottom: 44 })
    }.width(48).height('100%').position({ x: 0, y: 0 })
  }
}