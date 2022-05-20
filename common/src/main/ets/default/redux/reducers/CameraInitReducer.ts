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

import { Action } from '../actions/Action'
import image from '@ohos.multimedia.image'

let initState = {
  platformCapability: null,
  thumbnail: $r('app.media.ic_camera_thumbnail_default_white')
}

export default function CameraInitReducer(state = initState, action: {
  type: string,
  data: any
}) {
  switch (action.type) {
    case Action.ACTION_INIT_DONE:
      return { ...state, platformCapability: action.data.platformCapability}
    case Action.ACTION_UPDATE_THUMBNAIL:
      return { ...state, thumbnail: action.data.thumbnail }
    default:
      return state;
  }
  return state;
}